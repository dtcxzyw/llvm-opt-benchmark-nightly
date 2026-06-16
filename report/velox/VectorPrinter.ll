inline.NumInlined: 1525
inline.NumDeleted: 671
begin_hunk_0_@_ZN8facebook5velox11printVectorB5cxx11ERKNS0_10BaseVectorERKNS0_17SelectivityVectorE:bb.a
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.at ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc69
  %i.ab = load ptr, ptr %10, align 8, !tbaa !49   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !51
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSolsEPFRSoS_E.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  %i.ag = load ptr, ptr @_ZZN8facebook5velox11printVectorB5cxx11ERKNS0_10BaseVectorERKNS0_17SelectivityVectorEE10kSeparatorB5cxx11, align 8, !tbaa !49
  %i.ah = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox11printVectorB5cxx11ERKNS0_10BaseVectorERKNS0_17SelectivityVectorEE10kSeparatorB5cxx11, i64 8), align 8, !tbaa !52
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %i.ag, i64 noundef %i.ah)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit19 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !53
  %i.ak = getelementptr i8, ptr %i.aj, i64 -24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds i8, ptr %i.ai, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 240
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !55 ; 6 uses
  %.not.i.i.i71 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i71, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i72

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i72: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit19
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !70
  %.not.i1.i.i73 = icmp eq i8 %i.aq, 0
  br i1 %.not.i1.i.i73, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i72
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 67
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !51
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i74

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i72
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ao)
          to label %.noexc77 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc77:                                         ; preds = %bb.k
  %i.at = load ptr, ptr %i.ao, align 8, !tbaa !53
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = invoke noundef signext i8 %i.av(ptr noundef nonnull align 8 dereferenceable(570) %i.ao, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i74 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !76

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i74: ; preds = %.noexc77, %bb.j
  %.0.i.i.i75 = phi i8 [ %i.as, %bb.j ], [ %i.aw, %.noexc77 ]
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, i8 noundef signext %.0.i.i.i75)
          to label %.noexc79 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc79:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i74
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
          to label %_ZNSolsEPFRSoS_E.exit20 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit20:                          ; preds = %.noexc79
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.az = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.az, ptr %12, align 8, !tbaa !46
  %i.ba = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.ba, align 8, !tbaa !52
  store i8 0, ptr %i.az, align 8, !tbaa !51
  invoke fastcc void @_ZN8facebook5velox12_GLOBAL__N_124printTypeAndEncodingTreeERKNS0_10BaseVectorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %11, ptr noundef nonnull align 8 dereferenceable(94) %1, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.l unwind label %bb.au

bb.l:                                             ; preds = %_ZNSolsEPFRSoS_E.exit20
  %i.bb = load ptr, ptr %11, align 8, !tbaa !49
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !52
  %i.be = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %i.bb, i64 noundef %i.bd)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit24 unwind label %bb.av ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit24: ; preds = %bb.l
  %i.bf = load ptr, ptr %11, align 8, !tbaa !49   ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit24
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !51
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  %i.bk = load ptr, ptr %12, align 8, !tbaa !49   ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.az
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %i.bm = load i64, ptr %i.az, align 8, !tbaa !51
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.bo = load ptr, ptr @_ZZN8facebook5velox11printVectorB5cxx11ERKNS0_10BaseVectorERKNS0_17SelectivityVectorEE10kSeparatorB5cxx11, align 8, !tbaa !49
  %i.bp = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN8facebook5velox11printVectorB5cxx11ERKNS0_10BaseVectorERKNS0_17SelectivityVectorEE10kSeparatorB5cxx11, i64 8), align 8, !tbaa !52
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %i.bo, i64 noundef %i.bp)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit32 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !53
  %i.bs = getelementptr i8, ptr %i.br, i64 -24
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds i8, ptr %i.bq, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 240
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !55 ; 6 uses
  %.not.i.i.i82 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i82, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i83

.invoke:                                          ; preds = %.noexc43, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit32, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit19
  invoke void @_ZSt16__throw_bad_castv() #27
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i83: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit32
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 56
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !70
  %.not.i1.i.i84 = icmp eq i8 %i.by, 0
  br i1 %.not.i1.i.i84, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i83
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 67
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !51
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i85

bb.n:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i83
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bw)
          to label %.noexc88 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc88:                                         ; preds = %bb.n
  %i.cb = load ptr, ptr %i.bw, align 8, !tbaa !53
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = invoke noundef signext i8 %i.cd(ptr noundef nonnull align 8 dereferenceable(570) %i.bw, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i85 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !76

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i85: ; preds = %.noexc88, %bb.m
  %.0.i.i.i86 = phi i8 [ %i.ca, %bb.m ], [ %i.ce, %.noexc88 ]
  %i.cf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, i8 noundef signext %.0.i.i.i86)
          to label %.noexc90 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc90:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i85
  %i.cg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cf)
          to label %_ZNSolsEPFRSoS_E.exit34 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit34:                          ; preds = %.noexc90
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %9, ptr %7, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %8, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 37
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !28, !range !77, !noundef !78
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i, label %bb.o

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i:   ; preds = %_ZNSolsEPFRSoS_E.exit34
  %.0.in.pre.i.i = load i8, ptr %i.ci, align 4, !tbaa !79, !range !77
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

bb.o:                                             ; preds = %_ZNSolsEPFRSoS_E.exit34
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !43
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %bb.p, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.p:                                             ; preds = %bb.o
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !44 ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !35
  %i.ct = icmp eq i32 %i.cq, %i.cs
  br i1 %i.ct, label %bb.q, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.q:                                             ; preds = %bb.p
  %i.cu = load ptr, ptr %2, align 8, !tbaa !32    ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.cq, 0
  br i1 %.not.i.i.i, label %bb.r, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.r:                                             ; preds = %bb.q
  %i.cv = and i32 %i.cq, 2147483584               ; 3 uses
  %i.cw = zext nneg i32 %i.cv to i64
  %.not37.i.i.not.i.i165.not = icmp eq i32 %i.cv, 0
  br i1 %.not37.i.i.not.i.i165.not, label %.critedge.i.i.i.i, label %.lr.ph

bb.s:                                             ; preds = %.lr.ph
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.next.i.i167, 64 ; 2 uses
  %.not37.i.i.i.i = icmp samesign ugt i64 %indvars.iv.next.i.i, %i.cw
  br i1 %.not37.i.i.i.i, label %.critedge.i.i.i.i, label %.lr.ph, !llvm.loop !80

.lr.ph:                                           ; preds = %bb.r, %bb.s
  %indvars.iv.next.i.i167 = phi i64 [ %indvars.iv.next.i.i, %bb.s ], [ 64, %bb.r ] ; 2 uses
  %indvars.iv.i.i166 = phi i64 [ %indvars.iv.next.i.i167, %bb.s ], [ 0, %bb.r ]
  %i.cx = lshr exact i64 %indvars.iv.i.i166, 3
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cx
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !30
  %i.da = icmp eq i64 %i.cz, -1
  br i1 %i.da, label %bb.s, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, !llvm.loop !80

.critedge.i.i.i.i:                                ; preds = %bb.s, %bb.r
  %.not38.i.i.i.i = icmp eq i32 %i.cq, %i.cv
  br i1 %.not38.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, label %bb.t

bb.t:                                             ; preds = %.critedge.i.i.i.i
  %i.db = lshr i32 %i.cq, 6
  %i.dc = and i32 %i.cq, 63
  %i.dd = zext nneg i32 %i.dc to i64
  %notmask.i40.i.i.i.i = shl nsw i64 -1, %i.dd
  %i.de = zext nneg i32 %i.db to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.de
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !30
  %.demorgan.i.i = or i64 %i.dg, %notmask.i40.i.i.i.i
  %i.dh = icmp eq i64 %.demorgan.i.i, -1
  %i.di = zext i1 %i.dh to i16
  %i.dj = or disjoint i16 %i.di, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i: ; preds = %.lr.ph, %bb.t, %.critedge.i.i.i.i, %bb.q, %bb.p, %bb.o
  %.sroa.0.0.insert.ext.i.i = phi i16 [ 256, %bb.p ], [ 256, %bb.o ], [ 257, %bb.q ], [ 257, %.critedge.i.i.i.i ], [ %i.dj, %bb.t ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i, ptr %i.ci, align 4
  %i.dk = trunc i16 %.sroa.0.0.insert.ext.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i
  %.0.in.i.i = phi i8 [ %.0.in.pre.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i ], [ %i.dk, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i ]
  %.0.i.i = trunc nuw i8 %.0.in.i.i to i1
  br i1 %.0.i.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !44 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !43 ; 2 uses
  %i.dp = icmp slt i32 %i.do, %i.dm
  br i1 %i.dp, label %.lr.ph.i, label %.loopexit94

.lr.ph.i:                                         ; preds = %bb.u, %.noexc35
  %.06.i = phi i32 [ %i.dq, %.noexc35 ], [ %i.do, %bb.u ] ; 2 uses
  invoke fastcc void @"_ZZN8facebook5velox11printVectorB5cxx11ERKNS0_10BaseVectorERKNS0_17SelectivityVectorEENK3$_0clIiEEDaT_"(ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef %.06.i)
          to label %.noexc35 unwind label %.loopexit

.noexc35:                                         ; preds = %.lr.ph.i
  %i.dq = add i32 %.06.i, 1                       ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.dq, %i.dm
  br i1 %exitcond.not.i, label %.loopexit94, label %.lr.ph.i, !llvm.loop !82

bb.v:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.dr = load ptr, ptr %2, align 8, !tbaa !32    ; 6 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !43 ; 6 uses
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !44 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i8 1, ptr %5, align 8
  %.sroa.28.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.dr, ptr %.sroa.28.0..sroa_idx.i.i.i, align 8
  %.sroa.3.0..sroa_idx9.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %9, ptr %.sroa.3.0..sroa_idx9.i.i.i, align 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %8, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  store i8 1, ptr %6, align 8
  %.sroa.212.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.dr, ptr %.sroa.212.0..sroa_idx.i.i.i, align 8
  %.sroa.313.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %9, ptr %.sroa.313.0..sroa_idx.i.i.i, align 8
  %.sroa.414.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %8, ptr %.sroa.414.0..sroa_idx.i.i.i, align 8
  %.not.i.i.i.i = icmp slt i32 %i.dt, %i.dv
  br i1 %.not.i.i.i.i, label %bb.w, label %"_ZN8facebook5velox4bits13forEachSetBitIZNS0_11printVectorB5cxx11ERKNS0_10BaseVectorERKNS0_17SelectivityVectorEE3$_0EEvPKmiiT_.exit.i"

bb.w:                                             ; preds = %bb.v
  %i.dw = add i32 %i.dt, 63                       ; 2 uses
  %i.dx = srem i32 %i.dw, 64
  %i.dy = sub nsw i32 %i.dw, %i.dx                ; 6 uses
  %i.dz = and i32 %i.dv, -64                      ; 6 uses
  %i.ea = icmp slt i32 %i.dz, %i.dy
  br i1 %i.ea, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.eb = ashr i32 %i.dv, 6
  %i.ec = and i32 %i.dv, 63
  %i.ed = zext nneg i32 %i.ec to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.ed
  %i.ee = xor i64 %notmask.i.i.i.i.i, -1
  %i.ef = sub nsw i32 %i.dy, %i.dt                ; 2 uses
  %i.eg = zext nneg i32 %i.ef to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.eg
  %i.eh = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.ei = sub nsw i32 64, %i.ef
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = shl i64 %i.eh, %i.ej
  %i.el = and i64 %i.ek, %i.ee
  %i.em = sext i32 %i.eb to i64
  %i.en = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %i.em
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !30
  %i.ep = and i64 %i.el, %i.eo                    ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ep, 0
  br i1 %.not.i.i.i.i.i, label %"_ZN8facebook5velox4bits13forEachSetBitIZNS0_11printVectorB5cxx11ERKNS0_10BaseVectorERKNS0_17SelectivityVectorEE3$_0EEvPKmiiT_.exit.i", label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.x, %.noexc36
  %.011.i.i.i.i.i = phi i64 [ %i.eu, %.noexc36 ], [ %i.ep, %bb.x ] ; 3 uses
  %i.eq = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i, i1 true)
  %i.er = trunc nuw nsw i64 %i.eq to i32
  %i.es = or disjoint i32 %i.dz, %i.er
  invoke fastcc void @"_ZZN8facebook5velox11printVectorB5cxx11ERKNS0_10BaseVectorERKNS0_17SelectivityVectorEENK3$_0clIiEEDaT_"(ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.313.0..sroa_idx.i.i.i, i32 noundef %i.es)
          to label %.noexc36 unwind label %.loopexit.split-lp.loopexit

.noexc36:                                         ; preds = %.preheader.i.i.i.i.i
  %i.et = add nsw i64 %.011.i.i.i.i.i, -1
  %i.eu = and i64 %i.et, %.011.i.i.i.i.i          ; 2 uses
  %.not10.i.i.i.i.i = icmp eq i64 %i.eu, 0
  br i1 %.not10.i.i.i.i.i, label %"_ZN8facebook5velox4bits13forEachSetBitIZNS0_11printVectorB5cxx11ERKNS0_10BaseVectorERKNS0_17SelectivityVectorEE3$_0EEvPKmiiT_.exit.i", label %.preheader.i.i.i.i.i, !llvm.loop !83

bb.y:                                             ; preds = %bb.w
  %.not32.i.i.i.i = icmp eq i32 %i.dt, %i.dy
  br i1 %.not32.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_11printVectorB5cxx11ERKNS0_10BaseVectorERKNS0_17SelectivityVectorEE3$_0EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i", label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ev = sdiv i32 %i.dt, 64                      ; 2 uses
  %i.ew = sub nsw i32 %i.dy, %i.dt                ; 2 uses
  %i.ex = zext nneg i32 %i.ew to i64
  %notmask.i.i35.i.i.i.i = shl nsw i64 -1, %i.ex
  %i.ey = xor i64 %notmask.i.i35.i.i.i.i, -1
  %i.ez = sub nsw i32 64, %i.ew
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = shl i64 %i.ey, %i.fa
  %i.fc = sext i32 %i.ev to i64
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %i.fc
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !30
  %i.ff = and i64 %i.fe, %i.fb                    ; 2 uses
  %.not.i36.i.i.i.i = icmp eq i64 %i.ff, 0
  br i1 %.not.i36.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_11printVectorB5cxx11ERKNS0_10BaseVectorERKNS0_17SelectivityVectorEE3$_0EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i", label %.preheader.i37.i.i.i.i

.preheader.i37.i.i.i.i:                           ; preds = %bb.z
  %i.fg = shl nsw i32 %i.ev, 6
  br label %bb.aa

bb.aa:                                            ; preds = %.noexc37, %.preheader.i37.i.i.i.i
  %.011.i38.i.i.i.i = phi i64 [ %i.ff, %.preheader.i37.i.i.i.i ], [ %i.fl, %.noexc37 ] ; 3 uses
  %i.fh = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38.i.i.i.i, i1 true)
  %i.fi = trunc nuw nsw i64 %i.fh to i32
  %i.fj = or disjoint i32 %i.fg, %i.fi
  invoke fastcc void @"_ZZN8facebook5velox11printVectorB5cxx11ERKNS0_10BaseVectorERKNS0_17SelectivityVectorEENK3$_0clIiEEDaT_"(ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.313.0..sroa_idx.i.i.i, i32 noundef %i.fj)
          to label %.noexc37 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc37:                                         ; preds = %bb.aa
  %i.fk = add i64 %.011.i38.i.i.i.i, -1
  %i.fl = and i64 %i.fk, %.011.i38.i.i.i.i        ; 2 uses
  %.not10.i39.i.i.i.i = icmp eq i64 %i.fl, 0
  br i1 %.not10.i39.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_11printVectorB5cxx11ERKNS0_10BaseVectorERKNS0_17SelectivityVectorEE3$_0EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i", label %bb.aa, !llvm.loop !83

"_ZZN8facebook5velox4bits10forEachBitIZNS0_11printVectorB5cxx11ERKNS0_10BaseVectorERKNS0_17SelectivityVectorEE3$_0EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i": ; preds = %.noexc37, %bb.z, %bb.y
  %i.fm = add nsw i32 %i.dy, 64                   ; 2 uses
  %.not3365.i.i.i.i = icmp sgt i32 %i.fm, %i.dz
  br i1 %.not3365.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_11printVectorB5cxx11ERKNS0_10BaseVectorERKNS0_17SelectivityVectorEE3$_0EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i"
  %i.fn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  br label %bb.ab

._crit_edge.i.i.i.i:                              ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_11printVectorB5cxx11ERKNS0_10BaseVectorERKNS0_17SelectivityVectorEE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", %"_ZZN8facebook5velox4bits10forEachBitIZNS0_11printVectorB5cxx11ERKNS0_10BaseVectorERKNS0_17SelectivityVectorEE3$_0EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i"
  %.not34.i.i.i.i = icmp eq i32 %i.dv, %i.dz
  br i1 %.not34.i.i.i.i, label %"_ZN8facebook5velox4bits13forEachSetBitIZNS0_11printVectorB5cxx11ERKNS0_10BaseVectorERKNS0_17SelectivityVectorEE3$_0EEvPKmiiT_.exit.i", label %bb.am

bb.ab:                                            ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_11printVectorB5cxx11ERKNS0_10BaseVectorERKNS0_17SelectivityVectorEE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", %.lr.ph.i.i.i.i
  %i.fr = phi i32 [ %i.fm, %.lr.ph.i.i.i.i ], [ %i.is, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_11printVectorB5cxx11ERKNS0_10BaseVectorERKNS0_17SelectivityVectorEE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i" ] ; 2 uses
  %.066.i.i.i.i = phi i32 [ %i.dy, %.lr.ph.i.i.i.i ], [ %i.fr, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_11printVectorB5cxx11ERKNS0_10BaseVectorERKNS0_17SelectivityVectorEE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i" ] ; 2 uses
  %i.fs = sdiv i32 %.066.i.i.i.i, 64              ; 3 uses
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %i.ft
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !30 ; 2 uses
  switch i64 %i.fv, label %.lr.ph.i.i.i.i.i [
    i64 -1, label %bb.ac
    i64 0, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_11printVectorB5cxx11ERKNS0_10BaseVectorERKNS0_17SelectivityVectorEE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i"
  ]

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ab
  %i.fw = shl nsw i32 %i.fs, 6
  br label %bb.al

bb.ac:                                            ; preds = %bb.ab
  %i.fx = shl nsw i32 %i.fs, 6                    ; 2 uses
  %i.fy = add i32 %i.fx, 64
  %i.fz = sext i32 %i.fy to i64
  %.0.off.i.i.i.i = add i32 %.066.i.i.i.i, 127
  %.not28.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i, 64
  br i1 %.not28.i.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_11printVectorB5cxx11ERKNS0_10BaseVectorERKNS0_17SelectivityVectorEE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", label %.lr.ph27.i.i.i.i.i

.lr.ph27.i.i.i.i.i:                               ; preds = %bb.ac
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox11printVectorB5cxx11ERKNS0_10BaseVectorEii:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %common.resume

bb.e:                                             ; preds = %bb.a
  %i.k = icmp slt i32 %3, 0
  br i1 %i.k, label %bb.f, label %bb.i, !prof !103

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !110
  store i32 %3, ptr %6, align 16, !tbaa !51, !alias.scope !113, !noalias !110
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %i.l, align 16, !tbaa !51, !alias.scope !113, !noalias !110
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr nonnull @.str.3, i64 11, i64 17, ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !110
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11printVectorB5cxx11ERKNS0_10BaseVectorEiiE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr nonnull @.str.3) #27
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %9, align 8, !tbaa !49     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.h
  %i.q = load i64, ptr %i.o, align 8, !tbaa !51
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %common.resume

bb.i:                                             ; preds = %bb.e
  %i.s = add nuw nsw i32 %3, %2
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.u = load i32, ptr %i.t, align 8, !tbaa !7
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.u, i32 %i.s) ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 37 ; 3 uses
  store i8 0, ptr %i.v, align 1, !tbaa !28
  %i.w = sext i32 %.sroa.speculated to i64
  %i.x = add nsw i64 %i.w, 63
  %i.y = lshr i64 %i.x, 6                         ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %10, i8 0, i64 36, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 0, ptr %i.b, align 8, !tbaa !30
  %.not.i = icmp eq i64 %i.y, 0
  br i1 %.not.i, label %_ZN8facebook5velox17SelectivityVectorC2Eib.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(38) %10, ptr null, i64 noundef %i.y, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %._ZN8facebook5velox17SelectivityVectorC2Eib.exit_crit_edge unwind label %bb.k

._ZN8facebook5velox17SelectivityVectorC2Eib.exit_crit_edge: ; preds = %bb.j
  %.pre.pre = load ptr, ptr %10, align 8, !tbaa !32
  br label %_ZN8facebook5velox17SelectivityVectorC2Eib.exit

bb.k:                                             ; preds = %bb.j
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.aa = load ptr, ptr %10, align 8, !tbaa !32   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i, label %common.resume, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !34
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #25
  br label %common.resume

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN8facebook5velox17SelectivityVectorD2Ev.exit15, %bb.k, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.z, %bb.k ], [ %i.z, %bb.l ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9 ], [ %i.dc, %_ZN8facebook5velox17SelectivityVectorD2Ev.exit15 ]
  resume { ptr, i32 } %common.resume.op

_ZN8facebook5velox17SelectivityVectorC2Eib.exit:  ; preds = %._ZN8facebook5velox17SelectivityVectorC2Eib.exit_crit_edge, %bb.i
  %.pre = phi ptr [ %.pre.pre, %._ZN8facebook5velox17SelectivityVectorC2Eib.exit_crit_edge ], [ null, %bb.i ] ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 28 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 36 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  store i32 %.sroa.speculated, ptr %i.ai, align 8, !tbaa !35
  store i32 0, ptr %i.ag, align 8, !tbaa !44
  store i16 256, ptr %i.aj, align 4
  %i.ak = icmp eq i32 %2, %.sroa.speculated
  br i1 %i.ak, label %_ZN8facebook5velox17SelectivityVector13setValidRangeEiib.exit, label %bb.m

bb.m:                                             ; preds = %_ZN8facebook5velox17SelectivityVectorC2Eib.exit
  %.not.i.i.i = icmp slt i32 %2, %.sroa.speculated
  br i1 %.not.i.i.i, label %bb.n, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i

bb.n:                                             ; preds = %bb.m
  %i.al = add nuw i32 %2, 63                      ; 2 uses
  %i.am = srem i32 %i.al, 64
  %i.an = sub nsw i32 %i.al, %i.am                ; 6 uses
  %i.ao = and i32 %.sroa.speculated, -64          ; 4 uses
  %i.ap = icmp slt i32 %i.ao, %i.an
  br i1 %i.ap, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aq = and i32 %.sroa.speculated, 63
  %i.ar = zext nneg i32 %i.aq to i64
  %notmask.i.i.i.i = shl nsw i64 -1, %i.ar
  %i.as = xor i64 %notmask.i.i.i.i, -1
  %i.at = sub nsw i32 %i.an, %2                   ; 2 uses
  %i.au = zext nneg i32 %i.at to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.au
  %i.av = xor i64 %notmask.i.i.i.i.i, -1
  %i.aw = sub nsw i32 64, %i.at
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = shl i64 %i.av, %i.ax
  %i.az = and i64 %i.ay, %i.as
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split

bb.p:                                             ; preds = %bb.n
  %.not32.i.i.i = icmp eq i32 %2, %i.an
  br i1 %.not32.i.i.i, label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ba = lshr i32 %2, 6
  %i.bb = sub nsw i32 %i.an, %2                   ; 2 uses
  %i.bc = zext nneg i32 %i.bb to i64
  %notmask.i.i35.i.i.i = shl nsw i64 -1, %i.bc
  %i.bd = xor i64 %notmask.i.i35.i.i.i, -1
  %i.be = sub nsw i32 64, %i.bb
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = shl i64 %i.bd, %i.bf
  %i.bh = zext nneg i32 %i.ba to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.bh ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !30
  %i.bk = or i64 %i.bj, %i.bg
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !30
  br label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i

_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i: ; preds = %bb.q, %bb.p
  %i.bl = add nuw nsw i32 %i.an, 64               ; 2 uses
  %.not3347.i.i.i = icmp sgt i32 %i.bl, %i.ao
  br i1 %.not3347.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i
  %.not34.i.i.i = icmp eq i32 %.sroa.speculated, %i.ao
  br i1 %.not34.i.i.i, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i, label %bb.r

.lr.ph.i.i.i:                                     ; preds = %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i, %.lr.ph.i.i.i
  %i.bm = phi i32 [ %i.bq, %.lr.ph.i.i.i ], [ %i.bl, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i ] ; 2 uses
  %.048.i.i.i = phi i32 [ %i.bm, %.lr.ph.i.i.i ], [ %i.an, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i ]
  %i.bn = sdiv i32 %.048.i.i.i, 64
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [8 x i8], ptr %.pre, i64 %i.bo
  store i64 -1, ptr %i.bp, align 8, !tbaa !30
  %i.bq = add nsw i32 %i.bm, 64                   ; 2 uses
  %.not33.i.i.i = icmp sgt i32 %i.bq, %i.ao
  br i1 %.not33.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !116

bb.r:                                             ; preds = %._crit_edge.i.i.i
  %i.br = and i32 %.sroa.speculated, 63
  %i.bs = zext nneg i32 %i.br to i64
  %notmask.i37.i.i.i = shl nsw i64 -1, %i.bs
  %i.bt = xor i64 %notmask.i37.i.i.i, -1
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split: ; preds = %bb.o, %bb.r
  %.sink53 = phi i64 [ %i.bt, %bb.r ], [ %i.az, %bb.o ]
  %.sink = lshr i32 %.sroa.speculated, 6
  %i.bu = zext nneg i32 %.sink to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.bu ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !30
  %i.bx = or i64 %i.bw, %.sink53
  store i64 %i.bx, ptr %i.bv, align 8, !tbaa !30
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i:    ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split, %._crit_edge.i.i.i, %bb.m
  store i8 0, ptr %i.v, align 1, !tbaa !28
  br label %_ZN8facebook5velox17SelectivityVector13setValidRangeEiib.exit

_ZN8facebook5velox17SelectivityVector13setValidRangeEiib.exit: ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i, %_ZN8facebook5velox17SelectivityVectorC2Eib.exit
  %.not.i.i.i10 = icmp sgt i32 %.sroa.speculated, 0
  br i1 %.not.i.i.i10, label %bb.s, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i

bb.s:                                             ; preds = %_ZN8facebook5velox17SelectivityVector13setValidRangeEiib.exit
  %i.by = and i32 %.sroa.speculated, 2147483584   ; 4 uses
  %i.bz = zext nneg i32 %i.by to i64
  %.not37.i.i.not.i56.not = icmp eq i32 %i.by, 0
  br i1 %.not37.i.i.not.i56.not, label %.critedge.i.i.i, label %.lr.ph

_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i: ; preds = %.lr.ph
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.next.i58, 64 ; 2 uses
  %.not37.i.i.i = icmp samesign ugt i64 %indvars.iv.next.i, %i.bz
  br i1 %.not37.i.i.i, label %.critedge.i.i.i, label %.lr.ph, !llvm.loop !117

.lr.ph:                                           ; preds = %bb.s, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i
  %indvars.iv.next.i58 = phi i64 [ %indvars.iv.next.i, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i ], [ 64, %bb.s ] ; 2 uses
  %indvars.iv.i57 = phi i64 [ %indvars.iv.next.i58, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i ], [ 0, %bb.s ] ; 2 uses
  %i.ca = lshr exact i64 %indvars.iv.i57, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.ca
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !30 ; 2 uses
  %.not.i42.i.i.i = icmp eq i64 %i.cc, 0
  br i1 %.not.i42.i.i.i, label %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i, !llvm.loop !117

.critedge.i.i.i:                                  ; preds = %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i, %bb.s
  %.not38.i.i.i = icmp eq i32 %.sroa.speculated, %i.by
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i, label %bb.t

bb.t:                                             ; preds = %.critedge.i.i.i
  %i.cd = lshr i32 %.sroa.speculated, 6
  %i.ce = and i32 %.sroa.speculated, 63
  %i.cf = zext nneg i32 %i.ce to i64
  %notmask.i43.i.i.i = shl nsw i64 -1, %i.cf
  %i.cg = xor i64 %notmask.i43.i.i.i, -1
  %i.ch = zext nneg i32 %i.cd to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.ch
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !30
  %i.ck = and i64 %i.cj, %i.cg                    ; 2 uses
  %.not.i44.i.i.i = icmp eq i64 %i.ck, 0
  br i1 %.not.i44.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i: ; preds = %bb.t, %.critedge.i.i.i, %_ZN8facebook5velox17SelectivityVector13setValidRangeEiib.exit
  store i32 0, ptr %i.ah, align 4, !tbaa !43
  store i32 0, ptr %i.ag, align 8, !tbaa !44
  store i16 256, ptr %i.aj, align 4
  br label %_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i: ; preds = %.lr.ph
  %i.cl = trunc nuw nsw i64 %indvars.iv.i57 to i32
  br label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i: ; preds = %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i, %bb.t
  %.sink67.i.i.i = phi i64 [ %i.ck, %bb.t ], [ %i.cc, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i ]
  %.sink65.i.i.i = phi i32 [ %i.by, %bb.t ], [ %i.cl, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i ]
  %i.cm = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sink67.i.i.i, i1 true)
  %i.cn = trunc nuw nsw i64 %i.cm to i32
  %i.co = or disjoint i32 %.sink65.i.i.i, %i.cn   ; 2 uses
  store i32 %i.co, ptr %i.ah, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 -1, ptr %i.a, align 4, !tbaa !3
  store ptr %.pre, ptr %4, align 8, !tbaa !118
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.a, ptr %i.cp, align 8, !tbaa !120
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 1, ptr %i.cq, align 8, !tbaa !121
  store ptr %.pre, ptr %5, align 8, !tbaa !122
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.a, ptr %i.cr, align 8, !tbaa !120
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 1, ptr %i.cs, align 8, !tbaa !124
  %i.ct = invoke noundef zeroext i1 @_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_(i32 noundef %i.co, i32 noundef %.sroa.speculated, ptr noundef nonnull byval(%class.anon.30) align 8 %4, ptr noundef nonnull byval(%class.anon.32) align 8 %5)
          to label %.noexc unwind label %bb.w     ; 0 uses

.noexc:                                           ; preds = %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i
  %i.cu = load i32, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.cv = add nsw i32 %i.cu, 1
  store i32 %i.cv, ptr %i.ag, align 8, !tbaa !44
  store i8 0, ptr %i.v, align 1, !tbaa !28
  br label %_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit

_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit: ; preds = %.noexc, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i
  invoke void @_ZN8facebook5velox11printVectorB5cxx11ERKNS0_10BaseVectorERKNS0_17SelectivityVectorE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(94) %1, ptr noundef nonnull align 8 dereferenceable(38) %10)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit
  %i.cw = load ptr, ptr %10, align 8, !tbaa !32   ; 3 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i.i11, label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cx = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !34
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = ptrtoint ptr %i.cw to i64
  %i.db = sub i64 %i.cz, %i.da
  call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef %i.db) #25
  br label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit

_ZN8facebook5velox17SelectivityVectorD2Ev.exit:   ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  ret void

bb.w:                                             ; preds = %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i, %_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit
  %i.dc = landingpad { ptr, i32 }
          cleanup
  %i.dd = load ptr, ptr %10, align 8, !tbaa !32   ; 3 uses
  %.not.i.i.i.i13 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i.i13, label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit15, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.de = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !34
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = ptrtoint ptr %i.dd to i64
  %i.di = sub i64 %i.dg, %i.dh
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef %i.di) #25
  br label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit15

_ZN8facebook5velox17SelectivityVectorD2Ev.exit15: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %common.resume
}

; Function Attrs: noreturn
declare void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(32), ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !49     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !51
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8facebook5velox12_GLOBAL__N_119createVectorPrinterERKNS0_10BaseVectorE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(94) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  %3 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  %4 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  %5 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !125
  %i.c = tail call noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #26, !noalias !78 ; 24 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8facebook5velox12_GLOBAL__N_117VectorPrinterBaseE, i64 16), ptr %i.c, align 8, !tbaa !53, !noalias !78
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  switch i8 %i.b, label %bb.ah [
    i8 30, label %bb.b
    i8 31, label %bb.j
    i8 32, label %bb.y
  ]

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN8facebook5velox13DecodedVectorC1ERKNS0_10BaseVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %i.d, ptr noundef nonnull align 8 dereferenceable(94) %1, i1 noundef zeroext true)
          to label %.noexc unwind label %bb.i, !inline_history !126

.noexc:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 128 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false), !noalias !127
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8facebook5velox12_GLOBAL__N_118ArrayVectorPrinterE, i64 16), ptr %i.c, align 8, !tbaa !53, !noalias !127
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !130, !noalias !127
  %i.h = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.g, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox11ArrayVectorE, i64 0) #24, !noalias !127, !inline_history !126
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !127
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !141, !noalias !127
  invoke fastcc void @_ZN8facebook5velox12_GLOBAL__N_119createVectorPrinterERKNS0_10BaseVectorE(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull align 8 dereferenceable(94) %i.j)
          to label %bb.c unwind label %bb.g, !noalias !127, !inline_history !126

bb.c:                                             ; preds = %.noexc
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 136 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !143, !noalias !127 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 144 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !146, !noalias !127
  %.not.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i.i, label %bb.d, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox12_GLOBAL__N_117VectorPrinterBaseESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS7_EEERS7_DpOT_.exit.i.thread

_ZNSt6vectorISt10unique_ptrIN8facebook5velox12_GLOBAL__N_117VectorPrinterBaseESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS7_EEERS7_DpOT_.exit.i.thread: ; preds = %bb.c
  %.val.i.i.i.i.i.i = load i64, ptr %5, align 8, !tbaa !84, !noalias !127
  store i64 %.val.i.i.i.i.i.i, ptr %i.l, align 8, !tbaa !84, !noalias !127
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.o, ptr %i.k, align 8, !tbaa !143, !noalias !127
  br label %_ZNSt10unique_ptrIN8facebook5velox12_GLOBAL__N_118ArrayVectorPrinterESt14default_deleteIS3_EED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %.val.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !147, !noalias !127 ; 12 uses
  %i.p = ptrtoint ptr %i.l to i64                 ; 3 uses
  %i.q = ptrtoint ptr %.val.i.i.i to i64          ; 3 uses
  %i.r = sub i64 %i.p, %i.q                       ; 4 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775800
  br i1 %i.s, label %bb.e, label %_ZNKSt6vectorISt10unique_ptrIN8facebook5velox12_GLOBAL__N_117VectorPrinterBaseESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #27
          to label %.noexc.i unwind label %bb.h, !noalias !127, !inline_history !126

.noexc.i:                                         ; preds = %bb.e
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook5velox12_GLOBAL__N_117VectorPrinterBaseESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.t = ashr exact i64 %i.r, 3                   ; 3 uses
  %i.u = icmp eq ptr %i.l, %.val.i.i.i            ; 2 uses
  %.sroa.speculated.i.i.i.i = select i1 %i.u, i64 1, i64 %i.t
end_hunk_1
begin_hunk_2_@_ZNK8facebook5velox12_GLOBAL__N_122PrimitiveVectorPrinter16summarizeNonNullB5cxx11Ei:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !51
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.i

bb.g:                                             ; preds = %.noexc
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = load ptr, ptr %4, align 8, !tbaa !49    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.g
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !51
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %i.al

bb.h:                                             ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !243 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !53
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 80
  %i.av = load ptr, ptr %i.au, align 8
  tail call void %i.av(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(18) %i.as)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

declare void @_ZNK8facebook5velox10BaseVector8toStringB5cxx11Eb(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(94), i1 noundef zeroext) local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox14VectorEncoding15mapSimpleToNameB5cxx11ERKNS1_6SimpleE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN8facebook5velox14VectorEncodinglsERSoRKNS1_6SimpleE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %bb.b unwind label %bb.f       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !497)
  call void @llvm.experimental.noalias.scope.decl(metadata !500)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !46, !alias.scope !503
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !52, !alias.scope !503
  store i8 0, ptr %i.c, align 8, !tbaa !51, !alias.scope !503
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !97, !noalias !503 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !noalias !503 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !99, !noalias !503 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !49, !alias.scope !503 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.s = load i64, ptr %i.c, align 8, !tbaa !51, !alias.scope !503
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #25
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.v = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.v, ptr %2, align 8, !tbaa !53
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.x = getelementptr i8, ptr %i.v, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %2, i64 %i.y
  store ptr %i.w, ptr %i.z, align 8, !tbaa !53
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !53
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ab, align 8, !tbaa !53
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !49 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !51
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #25
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ab, align 8, !tbaa !53
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ai) #24
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.aj, ptr %2, align 8, !tbaa !53
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.al = getelementptr i8, ptr %i.aj, i64 -24
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds i8, ptr %2, i64 %i.am
  store ptr %i.ak, ptr %i.an, align 8, !tbaa !53
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ao, align 8, !tbaa !100
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ap) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void

bb.f:                                             ; preds = %bb.a
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.aq, %bb.f ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.p, %bb.d ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8facebook5velox12_GLOBAL__N_121printSizeAndNullCountERKNS0_10BaseVectorERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(94) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.b)
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.43, i64 noundef 11) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !241
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !53
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(94) %0, i32 noundef 0)
  br i1 %i.k, label %bb.c, label %_ZN8facebook5velox10BaseVector10countNullsERKN5boost13intrusive_ptrINS0_6BufferEEEi.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr %i.a, align 8, !tbaa !7
  br label %_ZN8facebook5velox10BaseVector10countNullsERKN5boost13intrusive_ptrINS0_6BufferEEEi.exit

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load i32, ptr %i.a, align 8, !tbaa !7    ; 6 uses
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !372  ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZN8facebook5velox10BaseVector10countNullsERKN5boost13intrusive_ptrINS0_6BufferEEEi.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !373  ; 4 uses
  %.not.i.i.i.i.i.i = icmp sgt i32 %i.n, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %_ZN8facebook5velox4bits10countNullsEPKmjj.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.r = and i32 %i.n, 2147483584                 ; 3 uses
  %.not3342.i.i.i.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not3342.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.f
  %i.s = zext nneg i32 %i.r to i64                ; 2 uses
  %2 = or disjoint i64 %i.s, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %2, i64 128)
  %i.t = add nsw i64 %umax, -65                   ; 3 uses
  %i.u = lshr i64 %i.t, 6
  %i.v = add nuw nsw i64 %i.u, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.t, 192
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check14 = icmp ult i64 %i.t, 960
  br i1 %min.iters.check14, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.v, 12
  %n.vec = and i64 %i.v, 576460752303423472       ; 4 uses
  %i.w = shl i64 %n.vec, 6                        ; 2 uses
  %i.x = or disjoint i64 %i.w, 64
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.am, %vector.body ]
  %vec.phi15 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.an, %vector.body ]
  %vec.phi16 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ao, %vector.body ]
  %vec.phi17 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ap, %vector.body ]
  %i.y = shl i64 %index, 3
  %i.z = and i64 %i.y, 2305843009213693824
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.z ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 96
  %wide.load = load <4 x i64>, ptr %i.aa, align 8, !tbaa !30
  %wide.load18 = load <4 x i64>, ptr %i.ab, align 8, !tbaa !30
  %wide.load19 = load <4 x i64>, ptr %i.ac, align 8, !tbaa !30
  %wide.load20 = load <4 x i64>, ptr %i.ad, align 8, !tbaa !30
  %i.ae = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load)
  %i.af = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load18)
  %i.ag = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load19)
  %i.ah = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load20)
  %i.ai = trunc nuw nsw <4 x i64> %i.ae to <4 x i32>
  %i.aj = trunc nuw nsw <4 x i64> %i.af to <4 x i32>
  %i.ak = trunc nuw nsw <4 x i64> %i.ag to <4 x i32>
  %i.al = trunc nuw nsw <4 x i64> %i.ah to <4 x i32>
  %i.am = add <4 x i32> %vec.phi, %i.ai           ; 2 uses
  %i.an = add <4 x i32> %vec.phi15, %i.aj         ; 2 uses
  %i.ao = add <4 x i32> %vec.phi16, %i.ak         ; 2 uses
  %i.ap = add <4 x i32> %vec.phi17, %i.al         ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !504

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.an, %i.am
  %bin.rdx21 = add <4 x i32> %i.ao, %bin.rdx
  %bin.rdx22 = add <4 x i32> %i.ap, %bin.rdx21
  %i.ar = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx22) ; 3 uses
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !163

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.ar, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec25 = and i64 %i.v, 576460752303423484     ; 3 uses
  %i.as = shl i64 %n.vec25, 6                     ; 2 uses
  %i.at = or disjoint i64 %i.as, 64
  %i.au = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index26 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next29, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi27 = phi <4 x i32> [ %i.au, %vec.epilog.ph ], [ %i.ba, %vec.epilog.vector.body ]
  %i.av = shl i64 %index26, 3
  %i.aw = and i64 %i.av, 2305843009213693920
  %i.ax = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.aw
  %wide.load28 = load <4 x i64>, ptr %i.ax, align 8, !tbaa !30
  %i.ay = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load28)
  %i.az = trunc nuw nsw <4 x i64> %i.ay to <4 x i32>
  %i.ba = add <4 x i32> %vec.phi27, %i.az         ; 2 uses
  %index.next29 = add nuw i64 %index26, 4         ; 2 uses
  %i.bb = icmp eq i64 %index.next29, %n.vec25
  br i1 %i.bb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !505

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bc = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ba) ; 2 uses
  %cmp.n30 = icmp eq i64 %i.v, %n.vec25
  br i1 %cmp.n30, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv1.i.ph = phi i64 [ 0, %iter.check ], [ %i.w, %vec.epilog.iter.check ], [ %i.as, %vec.epilog.middle.block ]
  %indvars.iv.i.ph = phi i64 [ 64, %iter.check ], [ %i.x, %vec.epilog.iter.check ], [ %i.at, %vec.epilog.middle.block ]
  %.ph = phi i32 [ 0, %iter.check ], [ %i.ar, %vec.epilog.iter.check ], [ %i.bc, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.f
  %.1.i.i.i.i.i = phi i32 [ 0, %bb.f ], [ %i.bc, %vec.epilog.middle.block ], [ %i.ar, %middle.block ], [ %i.bj, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.not34.i.i.i.i.i.i = icmp eq i32 %i.n, %i.r
  br i1 %.not34.i.i.i.i.i.i, label %_ZN8facebook5velox4bits10countNullsEPKmjj.exit.i.i, label %.sink.split.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %indvars.iv1.i = phi i64 [ %indvars.iv.next2.i, %.lr.ph.i.i.i.i.i.i ], [ %indvars.iv1.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i.i.i.i.i.i ], [ %indvars.iv.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.bd = phi i32 [ %i.bj, %.lr.ph.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.be = lshr exact i64 %indvars.iv1.i, 3
  %i.bf = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !30
  %i.bh = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bg)
  %i.bi = trunc nuw nsw i64 %i.bh to i32
  %i.bj = add nuw nsw i32 %i.bd, %i.bi            ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 64 ; 2 uses
  %.not33.i.i.i.i.i.i = icmp samesign ugt i64 %indvars.iv.next.i, %i.s
  %indvars.iv.next2.i = add nuw nsw i64 %indvars.iv1.i, 64
  br i1 %.not33.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !506

.sink.split.i.i.i.i.i.i:                          ; preds = %._crit_edge.i.i.i.i.i.i
  %i.bk = lshr i32 %i.n, 6
  %i.bl = and i32 %i.n, 63
  %i.bm = zext nneg i32 %i.bl to i64
  %notmask.i36.i.i.i.i.i.i = shl nsw i64 -1, %i.bm
  %i.bn = xor i64 %notmask.i36.i.i.i.i.i.i, -1
  %i.bo = zext nneg i32 %i.bk to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.bo
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !30
  %i.br = and i64 %i.bq, %i.bn
  %i.bs = tail call range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.br)
  %i.bt = trunc nuw nsw i64 %i.bs to i32
  %i.bu = add nsw i32 %.1.i.i.i.i.i, %i.bt
  br label %_ZN8facebook5velox4bits10countNullsEPKmjj.exit.i.i

_ZN8facebook5velox4bits10countNullsEPKmjj.exit.i.i: ; preds = %.sink.split.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i, %bb.e
  %.3.i.i.i.i.i = phi i32 [ %i.bu, %.sink.split.i.i.i.i.i.i ], [ %.1.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ 0, %bb.e ]
  %i.bv = sub i32 %i.n, %.3.i.i.i.i.i
  br label %_ZN8facebook5velox10BaseVector10countNullsERKN5boost13intrusive_ptrINS0_6BufferEEEi.exit

_ZN8facebook5velox10BaseVector10countNullsERKN5boost13intrusive_ptrINS0_6BufferEEEi.exit: ; preds = %_ZN8facebook5velox4bits10countNullsEPKmjj.exit.i.i, %bb.c
  %.0 = phi i32 [ %i.l, %bb.c ], [ %i.bv, %_ZN8facebook5velox4bits10countNullsEPKmjj.exit.i.i ] ; 2 uses
  %i.bw = icmp sgt i32 %.0, 0
  br i1 %i.bw, label %bb.g, label %_ZN8facebook5velox10BaseVector10countNullsERKN5boost13intrusive_ptrINS0_6BufferEEEi.exit.thread

bb.g:                                             ; preds = %_ZN8facebook5velox10BaseVector10countNullsERKN5boost13intrusive_ptrINS0_6BufferEEEi.exit
  %i.bx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %.0)
  %i.by = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, ptr noundef nonnull @.str.44, i64 noundef 6) ; 0 uses
  br label %bb.h

_ZN8facebook5velox10BaseVector10countNullsERKN5boost13intrusive_ptrINS0_6BufferEEEi.exit.thread: ; preds = %bb.d, %bb.b, %_ZN8facebook5velox10BaseVector10countNullsERKN5boost13intrusive_ptrINS0_6BufferEEEi.exit
  %i.bz = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.45, i64 noundef 8) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZN8facebook5velox10BaseVector10countNullsERKN5boost13intrusive_ptrINS0_6BufferEEEi.exit.thread, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8facebook5velox12_GLOBAL__N_120printEncodingAndTypeERKNS0_10BaseVectorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS5_19basic_ostringstreamIcS8_S9_EE(ptr noundef nonnull align 8 dereferenceable(94) %0, ptr %.0.val, i64 %.8.val, ptr noundef nonnull align 8 dereferenceable(112) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %.0.val, i64 noundef %.8.val)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !241
  store i32 %i.d, ptr %i.a, align 4, !tbaa !242
  call void @_ZN8facebook5velox14VectorEncoding15mapSimpleToNameB5cxx11ERKNS1_6SimpleE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.e = load ptr, ptr %2, align 8, !tbaa !49
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !52
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.e, i64 noundef %i.g)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.f ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.a
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.9, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !243  ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !53
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.n = load ptr, ptr %i.m, align 8
  invoke void %i.n(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(18) %i.k)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.o = load ptr, ptr %3, align 8, !tbaa !49
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !52
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef %i.o, i64 noundef %i.q)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit12 unwind label %bb.h

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit12: ; preds = %bb.b
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @.str.25, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit12
  %i.t = load ptr, ptr %3, align 8, !tbaa !49     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.w = load i64, ptr %i.u, align 8, !tbaa !51
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.y = load ptr, ptr %2, align 8, !tbaa !49     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !51
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call fastcc void @_ZN8facebook5velox12_GLOBAL__N_121printSizeAndNullCountERKNS0_10BaseVectorERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(94) %0, ptr noundef nonnull align 8 dereferenceable(112) %1)
  %i.ad = load ptr, ptr %1, align 8, !tbaa !53
  %i.ae = getelementptr i8, ptr %i.ad, i64 -24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds i8, ptr %1, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 240
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !55 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
  call void @_ZSt16__throw_bad_castv() #27
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !70
  %.not.i1.i.i = icmp eq i8 %i.ak, 0
  br i1 %.not.i1.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 67
  %i.am = load i8, ptr %i.al, align 1, !tbaa !51
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ai)
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !53
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = call noundef signext i8 %i.ap(ptr noundef nonnull align 8 dereferenceable(570) %i.ai, i8 noundef signext 10), !inline_history !507
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i = phi i8 [ %i.am, %bb.d ], [ %i.aq, %bb.e ]
  %i.ar = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext %.0.i.i.i)
  %i.as = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ar) ; 0 uses
  ret void

bb.f:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.a
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

bb.h:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit12, %bb.b
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aw = load ptr, ptr %3, align 8, !tbaa !49    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.h
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !51
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17, %bb.g
  %.pn = phi { ptr, i32 } [ %i.au, %bb.g ], [ %i.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ], [ %i.av, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19 ], [ %i.at, %bb.f ]
  %i.bb = load ptr, ptr %2, align 8, !tbaa !49    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.i
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !51
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8facebook5velox9RowVector7childAtEj(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
end_hunk_2
