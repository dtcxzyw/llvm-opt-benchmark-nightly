Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/theory_arrays?download=true
inline.NumInlined: 6400
inline.NumDeleted: 1621
begin_hunk_0_@_ZN4cvc58internal6theory6arrays12TheoryArrays17propagateRowLemmaESt5tupleIJNS0_12NodeTemplateILb0EEES6_S6_S6_EE:bb.a

bb.n:                                             ; preds = %bb.l
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #25
  br label %.body117

bb.o:                                             ; preds = %bb.m, %bb.k, %bb.j
  %i.u = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !41
  store ptr %i.u, ptr %24, align 8, !tbaa !370
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #25
  %i.v = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.p, label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i, !prof !39

bb.p:                                             ; preds = %bb.o
  %i.x = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #25
  %.not.i.i120 = icmp eq i32 %i.x, 0
  br i1 %.not.i.i120, label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.y = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.r unwind label %bb.s       ; 3 uses

bb.r:                                             ; preds = %bb.q
  store i64 1152920405095219200, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  store ptr %i.y, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !41
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #25
  br label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i

bb.s:                                             ; preds = %bb.q
  %i.aa = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #25
  br label %.body121

_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i: ; preds = %bb.r, %bb.p, %bb.o
  %i.ab = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !41 ; 2 uses
  store ptr %i.ab, ptr %25, align 8, !tbaa !370
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !370 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, %i.ad
  %spec.select = select i1 %.not.i.i.i, ptr %i.g, ptr %i.ad, !prof !333 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !370 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, %i.af
  %.sroa.0265.0 = select i1 %.not.i.i.i.i, ptr %i.n, ptr %i.af, !prof !333 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load ptr, ptr %24, align 8, !tbaa !370
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !370 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ah, %i.ai
  br i1 %.not.i.i.i.i.i, label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i.i.i, label %bb.t, !prof !333

bb.t:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i
  store ptr %i.ai, ptr %24, align 8, !tbaa !370
  br label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i.i.i

_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i.i.i: ; preds = %bb.t, %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i
  %i.aj = load ptr, ptr %1, align 8, !tbaa !370   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ab, %i.aj
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt5tupleIJRN4cvc58internal12NodeTemplateILb0EEES4_S4_S4_EEaSIJS3_S3_S3_S3_EEENSt9enable_ifIXcl12__assignableIDpRKT_EEERS5_E4typeERKS_IJDpS8_EE.exit, label %bb.u, !prof !333

bb.u:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i.i.i
  store ptr %i.aj, ptr %25, align 8, !tbaa !370
  br label %_ZNSt5tupleIJRN4cvc58internal12NodeTemplateILb0EEES4_S4_S4_EEaSIJS3_S3_S3_S3_EEENSt9enable_ifIXcl12__assignableIDpRKT_EEERS5_E4typeERKS_IJDpS8_EE.exit

_ZNSt5tupleIJRN4cvc58internal12NodeTemplateILb0EEES4_S4_S4_EEaSIJS3_S3_S3_S3_EEENSt9enable_ifIXcl12__assignableIDpRKT_EEERS5_E4typeERKS_IJDpS8_EE.exit: ; preds = %bb.u, %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !368
  store ptr %spec.select, ptr %26, align 8, !tbaa !370
  store ptr %.sroa.0265.0, ptr %27, align 8, !tbaa !370
  %i.am = invoke noundef zeroext i1 @_ZNK4cvc58internal6theory2eq14EqualityEngine8areEqualENS0_12NodeTemplateILb0EEES5_(ptr noundef nonnull align 8 dereferenceable(1784) %i.al, ptr noundef nonnull align 8 %26, ptr noundef nonnull align 8 %27)
          to label %bb.v unwind label %bb.bk

bb.v:                                             ; preds = %_ZNSt5tupleIJRN4cvc58internal12NodeTemplateILb0EEES4_S4_S4_EEaSIJS3_S3_S3_S3_EEENSt9enable_ifIXcl12__assignableIDpRKT_EEERS5_E4typeERKS_IJDpS8_EE.exit
  br i1 %i.am, label %.critedge100.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !368
  %i.ao = load ptr, ptr %24, align 8, !tbaa !370
  store ptr %i.ao, ptr %28, align 8, !tbaa !370
  %i.ap = load ptr, ptr %25, align 8, !tbaa !370
  store ptr %i.ap, ptr %29, align 8, !tbaa !370
  %i.aq = invoke noundef zeroext i1 @_ZNK4cvc58internal6theory2eq14EqualityEngine8areEqualENS0_12NodeTemplateILb0EEES5_(ptr noundef nonnull align 8 dereferenceable(1784) %i.an, ptr noundef nonnull align 8 %28, ptr noundef nonnull align 8 %29)
          to label %.critedge100 unwind label %bb.bk

.critedge100:                                     ; preds = %bb.w
  br i1 %i.aq, label %.critedge100.thread, label %bb.x

bb.x:                                             ; preds = %.critedge100
  %i.ar = invoke noundef ptr @_ZNK4cvc58internal6EnvObj11nodeManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.y unwind label %bb.bk      ; 0 uses

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #25
  %i.as = load ptr, ptr %25, align 8, !tbaa !370
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25, !noalias !1584
  %i.at = getelementptr inbounds nuw i8, ptr %spec.select, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !372, !noalias !1584
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %21, ptr noundef %i.au, i32 noundef 217)
          to label %.noexc unwind label %bb.bl

.noexc:                                           ; preds = %bb.y
  store ptr %spec.select, ptr %22, align 8, !tbaa !370, !noalias !1584
  %i.av = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %21, ptr noundef nonnull align 8 %22)
          to label %bb.z unwind label %bb.ab, !noalias !1584

bb.z:                                             ; preds = %.noexc
  store ptr %i.as, ptr %23, align 8, !tbaa !370, !noalias !1584
  %i.aw = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %i.av, ptr noundef nonnull align 8 %23)
          to label %bb.aa unwind label %bb.ab, !noalias !1584 ; 0 uses

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %30, ptr noundef nonnull align 8 dereferenceable(124) %21)
          to label %bb.ac unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %.noexc
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %21) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25, !noalias !1584
  br label %.body124

bb.ac:                                            ; preds = %bb.aa
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %21) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25, !noalias !1584
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #25
  %i.ay = load ptr, ptr %25, align 8, !tbaa !370
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25, !noalias !1585
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0265.0, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !372, !noalias !1585
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %18, ptr noundef %i.ba, i32 noundef 217)
          to label %.noexc126 unwind label %bb.bm

.noexc126:                                        ; preds = %bb.ac
  store ptr %.sroa.0265.0, ptr %19, align 8, !tbaa !370, !noalias !1585
  %i.bb = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %18, ptr noundef nonnull align 8 %19)
          to label %bb.ad unwind label %bb.af, !noalias !1585

bb.ad:                                            ; preds = %.noexc126
  store ptr %i.ay, ptr %20, align 8, !tbaa !370, !noalias !1585
  %i.bc = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %i.bb, ptr noundef nonnull align 8 %20)
          to label %bb.ae unwind label %bb.af, !noalias !1585 ; 0 uses

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %31, ptr noundef nonnull align 8 dereferenceable(124) %18)
          to label %bb.ag unwind label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %.noexc126
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %18) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25, !noalias !1585
  br label %.body127

bb.ag:                                            ; preds = %bb.ae
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %18) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25, !noalias !1585
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  %i.be = load ptr, ptr %i.ak, align 8, !tbaa !368
  %i.bf = load ptr, ptr %30, align 8, !tbaa !43
  store ptr %i.bf, ptr %32, align 8, !tbaa !370
  %i.bg = invoke noundef zeroext i1 @_ZNK4cvc58internal6theory2eq14EqualityEngine7hasTermENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(1784) %i.be, ptr noundef nonnull align 8 %32)
          to label %bb.ah unwind label %bb.dg     ; 2 uses

bb.ah:                                            ; preds = %bb.ag
  %i.bh = load ptr, ptr %i.ak, align 8, !tbaa !368
  %i.bi = load ptr, ptr %31, align 8, !tbaa !43
  store ptr %i.bi, ptr %33, align 8, !tbaa !370
  %i.bj = invoke noundef zeroext i1 @_ZNK4cvc58internal6theory2eq14EqualityEngine7hasTermENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(1784) %i.bh, ptr noundef nonnull align 8 %33)
          to label %bb.ai unwind label %bb.dg     ; 2 uses

bb.ai:                                            ; preds = %bb.ah
  %i.bk = and i1 %i.bg, %i.bj                     ; 2 uses
  %i.bl = invoke noundef nonnull align 8 dereferenceable(408) ptr @_ZNK4cvc58internal6EnvObj7optionsEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.aj unwind label %bb.dg

bb.aj:                                            ; preds = %bb.ai
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 208
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !556, !nonnull !325, !align !326
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !591 ; 2 uses
  %i.bp = icmp sgt i64 %i.bo, 0
  br i1 %i.bp, label %bb.ak, label %.critedge106.thread

bb.ak:                                            ; preds = %bb.aj
  %i.bq = load ptr, ptr %i.ak, align 8, !tbaa !368
  %i.br = load ptr, ptr %24, align 8, !tbaa !370
  store ptr %i.br, ptr %34, align 8, !tbaa !370
  %i.bs = load ptr, ptr %25, align 8, !tbaa !370
  store ptr %i.bs, ptr %35, align 8, !tbaa !370
  %i.bt = invoke noundef zeroext i1 @_ZNK4cvc58internal6theory2eq14EqualityEngine11areDisequalENS0_12NodeTemplateILb0EEES5_b(ptr noundef nonnull align 8 dereferenceable(1784) %i.bq, ptr noundef nonnull align 8 %34, ptr noundef nonnull align 8 %35, i1 noundef zeroext true)
          to label %bb.al unwind label %bb.dg

bb.al:                                            ; preds = %bb.ak
  %i.bu = icmp ne i64 %i.bo, 1
  %i.bv = or i1 %i.bk, %i.bu
  %or.cond = and i1 %i.bv, %i.bt
  br i1 %or.cond, label %.critedge102, label %.critedge

.critedge102:                                     ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #25
  %i.bw = load ptr, ptr %30, align 8, !tbaa !43, !noalias !1586 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %31, align 8, !tbaa !43, !noalias !1586
  call void @llvm.lifetime.start.p0(ptr nonnull %16), !noalias !1586
  call void @llvm.lifetime.start.p0(ptr nonnull %17), !noalias !1586
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25, !noalias !1587
  %i.bz = load ptr, ptr %i.bx, align 8, !tbaa !372, !noalias !1587
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %15, ptr noundef %i.bz, i32 noundef 5)
          to label %.noexc162 unwind label %bb.bn

.noexc162:                                        ; preds = %.critedge102
  store ptr %i.bw, ptr %16, align 8, !tbaa !370, !noalias !1587
  %i.ca = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %15, ptr noundef nonnull align 8 %16)
          to label %bb.am unwind label %.body.i, !noalias !1587

bb.am:                                            ; preds = %.noexc162
  store ptr %i.by, ptr %17, align 8, !tbaa !370, !noalias !1587
  %i.cb = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %i.ca, ptr noundef nonnull align 8 %17)
          to label %bb.an unwind label %.body.i, !noalias !1587 ; 0 uses

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %36, ptr noundef nonnull align 8 dereferenceable(124) %15)
          to label %bb.ao unwind label %.body.i

.body.i:                                          ; preds = %bb.an, %bb.am, %.noexc162
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25, !noalias !1587
  br label %.body163

bb.ao:                                            ; preds = %bb.an
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25, !noalias !1587
  call void @llvm.lifetime.end.p0(ptr nonnull %16), !noalias !1586
  call void @llvm.lifetime.end.p0(ptr nonnull %17), !noalias !1586
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #25
  %i.cd = invoke noundef zeroext i1 @_ZNK4cvc58internal12NodeTemplateILb0EE7isConstEv(ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %bb.ap unwind label %bb.bo

bb.ap:                                            ; preds = %bb.ao
  br i1 %i.cd, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %i.ce = invoke noundef zeroext i1 @_ZNK4cvc58internal12NodeTemplateILb0EE7isConstEv(ptr noundef nonnull align 8 dereferenceable(8) %25)
          to label %bb.ar unwind label %bb.bo

bb.ar:                                            ; preds = %bb.aq
  br i1 %i.ce, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 280
  invoke void @_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef nonnull align 8 dereferenceable(8) %i.cf)
          to label %.critedge104 unwind label %bb.bo

bb.at:                                            ; preds = %bb.ar, %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #25
  %i.cg = load ptr, ptr %24, align 8, !tbaa !370, !noalias !1588 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %25, align 8, !tbaa !370, !noalias !1588
  call void @llvm.lifetime.start.p0(ptr nonnull %13), !noalias !1588
  call void @llvm.lifetime.start.p0(ptr nonnull %14), !noalias !1588
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25, !noalias !1589
  %i.cj = load ptr, ptr %i.ch, align 8, !tbaa !372, !noalias !1589
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %12, ptr noundef %i.cj, i32 noundef 5)
          to label %.noexc166 unwind label %bb.bp

.noexc166:                                        ; preds = %bb.at
  store ptr %i.cg, ptr %13, align 8, !tbaa !370, !noalias !1589
  %i.ck = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %12, ptr noundef nonnull align 8 %13)
          to label %bb.au unwind label %.body.i165, !noalias !1589

bb.au:                                            ; preds = %.noexc166
  store ptr %i.ci, ptr %14, align 8, !tbaa !370, !noalias !1589
  %i.cl = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %i.ck, ptr noundef nonnull align 8 %14)
          to label %bb.av unwind label %.body.i165, !noalias !1589 ; 0 uses

bb.av:                                            ; preds = %bb.au
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %38, ptr noundef nonnull align 8 dereferenceable(124) %12)
          to label %bb.aw unwind label %.body.i165

.body.i165:                                       ; preds = %bb.av, %bb.au, %.noexc166
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25, !noalias !1589
  br label %.body167

bb.aw:                                            ; preds = %bb.av
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25, !noalias !1589
  call void @llvm.lifetime.end.p0(ptr nonnull %13), !noalias !1588
  call void @llvm.lifetime.end.p0(ptr nonnull %14), !noalias !1588
  %i.cn = load ptr, ptr %38, align 8, !tbaa !43, !noalias !1590 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %11), !noalias !1590
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25, !noalias !1591
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !372, !noalias !1591
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %10, ptr noundef %i.cp, i32 noundef 20)
          to label %.noexc170 unwind label %bb.bq

.noexc170:                                        ; preds = %bb.aw
  store ptr %i.cn, ptr %11, align 8, !tbaa !370, !noalias !1591
  %i.cq = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %10, ptr noundef nonnull align 8 %11)
          to label %bb.ax unwind label %.body.i169, !noalias !1591 ; 0 uses

bb.ax:                                            ; preds = %.noexc170
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %37, ptr noundef nonnull align 8 dereferenceable(124) %10)
          to label %bb.ay unwind label %.body.i169

.body.i169:                                       ; preds = %bb.ax, %.noexc170
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25, !noalias !1591
  br label %.body171

bb.ay:                                            ; preds = %bb.ax
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25, !noalias !1591
  call void @llvm.lifetime.end.p0(ptr nonnull %11), !noalias !1590
  %i.cs = load ptr, ptr %38, align 8, !tbaa !43   ; 3 uses
  %i.ct = load i64, ptr %i.cs, align 8            ; 3 uses
  %i.cu = and i64 %i.ct, 1152920405095219200
  %.not.i.i173 = icmp eq i64 %i.cu, 1152920405095219200
  br i1 %.not.i.i173, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.az, !prof !333

bb.az:                                            ; preds = %bb.ay
  %i.cv = add i64 %i.ct, 1152920405095219200
  %i.cw = and i64 %i.cv, 1152920405095219200      ; 2 uses
  %i.cx = and i64 %i.ct, -1152920405095219201
  %i.cy = or disjoint i64 %i.cw, %i.cx
  store i64 %i.cy, ptr %i.cs, align 8
  %i.cz = icmp eq i64 %i.cw, 0
  br i1 %i.cz, label %bb.ba, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !333

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cs)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  call void @__clang_call_terminate(ptr %i.db) #29
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.ay, %bb.az, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #25
  br label %.critedge104

.critedge104:                                     ; preds = %bb.as, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 5672
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !60 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !68
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !70
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 -8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !71
  %i.dj = icmp eq ptr %i.dd, %i.di
  br i1 %i.dj, label %_ZN4cvc57context10ContextObj11makeCurrentEv.exit.i, label %bb.bc

bb.bc:                                            ; preds = %.critedge104
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 5664
  invoke void @_ZN4cvc57context10ContextObj6updateEv(ptr noundef nonnull align 8 dereferenceable(74) %i.dk)
          to label %_ZN4cvc57context10ContextObj11makeCurrentEv.exit.i unwind label %bb.cc

_ZN4cvc57context10ContextObj11makeCurrentEv.exit.i: ; preds = %bb.bc, %.critedge104
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 5712 ; 3 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !343 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 5720
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !345
  %.not.i11.i = icmp eq ptr %i.dm, %i.do
  br i1 %.not.i11.i, label %bb.bh, label %bb.bd

bb.bd:                                            ; preds = %_ZN4cvc57context10ContextObj11makeCurrentEv.exit.i
  %i.dp = load ptr, ptr %37, align 8, !tbaa !43   ; 5 uses
  store ptr %i.dp, ptr %i.dm, align 8, !tbaa !43
  %i.dq = load i64, ptr %i.dp, align 8            ; 3 uses
  %i.dr = lshr i64 %i.dq, 40
  %i.ds = trunc nuw nsw i64 %i.dr to i32
  %i.dt = and i32 %i.ds, 1048575                  ; 3 uses
  %i.du = icmp samesign ult i32 %i.dt, 1048574
  br i1 %i.du, label %bb.be, label %bb.bf, !prof !334

bb.be:                                            ; preds = %bb.bd
  %i.dv = add nuw nsw i32 %i.dt, 1
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = shl nuw nsw i64 %i.dw, 40
  %i.dy = and i64 %i.dq, -1152920405095219201
  %i.dz = or i64 %i.dx, %i.dy
  store i64 %i.dz, ptr %i.dp, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i

bb.bf:                                            ; preds = %bb.bd
  %i.ea = icmp eq i32 %i.dt, 1048574
  br i1 %i.ea, label %bb.bg, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i, !prof !333

bb.bg:                                            ; preds = %bb.bf
  %i.eb = or i64 %i.dq, 1152920405095219200
  store i64 %i.eb, ptr %i.dp, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dp)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i unwind label %bb.cc

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i: ; preds = %bb.bg, %bb.bf, %bb.be
  %i.ec = load ptr, ptr %i.dl, align 8, !tbaa !343
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store ptr %i.ed, ptr %i.dl, align 8, !tbaa !343
  br label %bb.bi

bb.bh:                                            ; preds = %_ZN4cvc57context10ContextObj11makeCurrentEv.exit.i
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 5704
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ee, ptr %i.dm, ptr noundef nonnull align 8 dereferenceable(8) %37)
          to label %bb.bi unwind label %bb.cc

bb.bi:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i, %bb.bh
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 5728 ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !340
  %i.eh = add i64 %i.eg, 1
  store i64 %i.eh, ptr %i.ef, align 8, !tbaa !340
  br i1 %i.bg, label %bb.br, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ei = load ptr, ptr %30, align 8, !tbaa !43
  store ptr %i.ei, ptr %39, align 8, !tbaa !370
  invoke void @_ZN4cvc58internal6theory6arrays12TheoryArrays23preRegisterTermInternalENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(6193) %0, ptr noundef nonnull align 8 %39)
          to label %bb.br unwind label %bb.cc

bb.bk:                                            ; preds = %bb.w, %_ZNSt5tupleIJRN4cvc58internal12NodeTemplateILb0EEES4_S4_S4_EEaSIJS3_S3_S3_S3_EEENSt9enable_ifIXcl12__assignableIDpRKT_EEERS5_E4typeERKS_IJDpS8_EE.exit, %bb.x
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %.body121

bb.bl:                                            ; preds = %bb.y
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %.body124

bb.bm:                                            ; preds = %bb.ac
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %.body127

bb.bn:                                            ; preds = %.critedge102
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %.body163

bb.bo:                                            ; preds = %bb.as, %bb.aq, %bb.ao
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.bp:                                            ; preds = %bb.at
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %.body167

bb.bq:                                            ; preds = %bb.aw
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %.body171

.body171:                                         ; preds = %.body.i169, %bb.bq
  %eh.lpad-body172 = phi { ptr, i32 } [ %i.ep, %bb.bq ], [ %i.cr, %.body.i169 ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %38) #25
  br label %.body167

.body167:                                         ; preds = %bb.bp, %.body.i165, %.body171
  %.pn83 = phi { ptr, i32 } [ %eh.lpad-body172, %.body171 ], [ %i.eo, %bb.bp ], [ %i.cm, %.body.i165 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #25
  br label %bb.cd

bb.br:                                            ; preds = %bb.bj, %bb.bi
  br i1 %i.bj, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.eq = load ptr, ptr %31, align 8, !tbaa !43
  store ptr %i.eq, ptr %40, align 8, !tbaa !370
  invoke void @_ZN4cvc58internal6theory6arrays12TheoryArrays23preRegisterTermInternalENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(6193) %0, ptr noundef nonnull align 8 %40)
          to label %bb.bt unwind label %bb.cc

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 2480
  %i.es = load ptr, ptr %36, align 8, !tbaa !43
  store ptr %i.es, ptr %41, align 8, !tbaa !370
  %i.et = load ptr, ptr %37, align 8, !tbaa !43
  store ptr %i.et, ptr %42, align 8, !tbaa !370
  %i.eu = invoke noundef zeroext i1 @_ZN4cvc58internal6theory6arrays16InferenceManager15assertInferenceENS0_12NodeTemplateILb0EEEbNS1_11InferenceIdES5_NS_9ProofRuleE(ptr noundef nonnull align 8 dereferenceable(248) %i.er, ptr noundef nonnull align 8 %41, i1 noundef zeroext true, i32 noundef 79, ptr noundef nonnull align 8 %42, i32 noundef 83)
          to label %bb.bu unwind label %bb.cc     ; 0 uses

bb.bu:                                            ; preds = %bb.bt
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ew = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal7IntStatppEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ev)
          to label %bb.bv unwind label %bb.cc     ; 0 uses

bb.bv:                                            ; preds = %bb.bu
  %i.ex = load ptr, ptr %37, align 8, !tbaa !43   ; 3 uses
  %i.ey = load i64, ptr %i.ex, align 8            ; 3 uses
  %i.ez = and i64 %i.ey, 1152920405095219200
  %.not.i.i180 = icmp eq i64 %i.ez, 1152920405095219200
  br i1 %.not.i.i180, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit181, label %bb.bw, !prof !333

bb.bw:                                            ; preds = %bb.bv
  %i.fa = add i64 %i.ey, 1152920405095219200
  %i.fb = and i64 %i.fa, 1152920405095219200      ; 2 uses
  %i.fc = and i64 %i.ey, -1152920405095219201
  %i.fd = or disjoint i64 %i.fb, %i.fc
  store i64 %i.fd, ptr %i.ex, align 8
  %i.fe = icmp eq i64 %i.fb, 0
  br i1 %i.fe, label %bb.bx, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit181, !prof !333

bb.bx:                                            ; preds = %bb.bw
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ex)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit181 unwind label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ff = landingpad { ptr, i32 }
          catch ptr null
  %i.fg = extractvalue { ptr, i32 } %i.ff, 0
  call void @__clang_call_terminate(ptr %i.fg) #29
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit181: ; preds = %bb.bv, %bb.bw, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #25
  %i.fh = load ptr, ptr %36, align 8, !tbaa !43   ; 3 uses
  %i.fi = load i64, ptr %i.fh, align 8            ; 3 uses
  %i.fj = and i64 %i.fi, 1152920405095219200
  %.not.i.i182 = icmp eq i64 %i.fj, 1152920405095219200
  br i1 %.not.i.i182, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit183, label %bb.bz, !prof !333

bb.bz:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit181
  %i.fk = add i64 %i.fi, 1152920405095219200
  %i.fl = and i64 %i.fk, 1152920405095219200      ; 2 uses
  %i.fm = and i64 %i.fi, -1152920405095219201
  %i.fn = or disjoint i64 %i.fl, %i.fm
  store i64 %i.fn, ptr %i.fh, align 8
  %i.fo = icmp eq i64 %i.fl, 0
  br i1 %i.fo, label %bb.ca, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit183, !prof !333

bb.ca:                                            ; preds = %bb.bz
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fh)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit183 unwind label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.fp = landingpad { ptr, i32 }
          catch ptr null
  %i.fq = extractvalue { ptr, i32 } %i.fp, 0
  call void @__clang_call_terminate(ptr %i.fq) #29
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit183: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit181, %bb.bz, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #25
  br label %.critedge106.thread

bb.cc:                                            ; preds = %bb.bs, %bb.bj, %bb.bu, %bb.bc, %bb.bg, %bb.bh, %bb.bt
  %i.fr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %37) #25
  br label %bb.cd

bb.cd:                                            ; preds = %.body167, %bb.cc, %bb.bo
  %.pn85.pn = phi { ptr, i32 } [ %i.fr, %bb.cc ], [ %i.en, %bb.bo ], [ %.pn83, %.body167 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #25
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %36) #25
  br label %.body163

.body163:                                         ; preds = %bb.bn, %.body.i, %bb.cd
  %.pn85.pn.pn = phi { ptr, i32 } [ %.pn85.pn, %bb.cd ], [ %i.em, %bb.bn ], [ %i.cc, %.body.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #25
  br label %bb.dt

.critedge:                                        ; preds = %bb.al
  br i1 %i.bk, label %bb.ce, label %.critedge106.thread

bb.ce:                                            ; preds = %.critedge
  %i.fs = load ptr, ptr %i.ak, align 8, !tbaa !368
  %i.ft = load ptr, ptr %30, align 8, !tbaa !43
  store ptr %i.ft, ptr %43, align 8, !tbaa !370
  %i.fu = load ptr, ptr %31, align 8, !tbaa !43
  store ptr %i.fu, ptr %44, align 8, !tbaa !370
  %i.fv = invoke noundef zeroext i1 @_ZNK4cvc58internal6theory2eq14EqualityEngine11areDisequalENS0_12NodeTemplateILb0EEES5_b(ptr noundef nonnull align 8 dereferenceable(1784) %i.fs, ptr noundef nonnull align 8 %43, ptr noundef nonnull align 8 %44, i1 noundef zeroext true)
          to label %.critedge106 unwind label %bb.dg

.critedge106:                                     ; preds = %bb.ce
  br i1 %i.fv, label %.critedge108, label %.critedge106.thread

.critedge108:                                     ; preds = %.critedge106
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #25
  %i.fw = invoke noundef zeroext i1 @_ZNK4cvc58internal12NodeTemplateILb1EE7isConstEv(ptr noundef nonnull align 8 dereferenceable(8) %30)
          to label %bb.cf unwind label %bb.dh

bb.cf:                                            ; preds = %.critedge108
  br i1 %i.fw, label %bb.cg, label %bb.cm

bb.cg:                                            ; preds = %bb.cf
  %i.fx = invoke noundef zeroext i1 @_ZNK4cvc58internal12NodeTemplateILb1EE7isConstEv(ptr noundef nonnull align 8 dereferenceable(8) %31)
          to label %bb.ch unwind label %bb.dh

bb.ch:                                            ; preds = %bb.cg
  br i1 %i.fx, label %bb.ci, label %bb.cm

bb.ci:                                            ; preds = %bb.ch
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !43 ; 5 uses
  store ptr %i.fz, ptr %45, align 8, !tbaa !43
  %i.ga = load i64, ptr %i.fz, align 8            ; 3 uses
  %i.gb = lshr i64 %i.ga, 40
  %i.gc = trunc nuw nsw i64 %i.gb to i32
  %i.gd = and i32 %i.gc, 1048575                  ; 3 uses
  %i.ge = icmp samesign ult i32 %i.gd, 1048574
  br i1 %i.ge, label %bb.cj, label %bb.ck, !prof !334

bb.cj:                                            ; preds = %bb.ci
  %i.gf = add nuw nsw i32 %i.gd, 1
  %i.gg = zext nneg i32 %i.gf to i64
  %i.gh = shl nuw nsw i64 %i.gg, 40
  %i.gi = and i64 %i.ga, -1152920405095219201
  %i.gj = or i64 %i.gh, %i.gi
  store i64 %i.gj, ptr %i.fz, align 8
  br label %.critedge110

bb.ck:                                            ; preds = %bb.ci
  %i.gk = icmp eq i32 %i.gd, 1048574
  br i1 %i.gk, label %bb.cl, label %.critedge110, !prof !333

bb.cl:                                            ; preds = %bb.ck
  %i.gl = or i64 %i.ga, 1152920405095219200
  store i64 %i.gl, ptr %i.fz, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fz)
          to label %.critedge110 unwind label %bb.dh

bb.cm:                                            ; preds = %bb.ch, %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #25
  %i.gm = load ptr, ptr %30, align 8, !tbaa !43, !noalias !1592 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %i.go = load ptr, ptr %31, align 8, !tbaa !43, !noalias !1592
  call void @llvm.lifetime.start.p0(ptr nonnull %8), !noalias !1592
  call void @llvm.lifetime.start.p0(ptr nonnull %9), !noalias !1592
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25, !noalias !1593
  %i.gp = load ptr, ptr %i.gn, align 8, !tbaa !372, !noalias !1593
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %7, ptr noundef %i.gp, i32 noundef 5)
          to label %.noexc226 unwind label %bb.di

.noexc226:                                        ; preds = %bb.cm
  store ptr %i.gm, ptr %8, align 8, !tbaa !370, !noalias !1593
  %i.gq = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %7, ptr noundef nonnull align 8 %8)
          to label %bb.cn unwind label %.body.i225, !noalias !1593

bb.cn:                                            ; preds = %.noexc226
  store ptr %i.go, ptr %9, align 8, !tbaa !370, !noalias !1593
  %i.gr = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %i.gq, ptr noundef nonnull align 8 %9)
          to label %bb.co unwind label %.body.i225, !noalias !1593 ; 0 uses

bb.co:                                            ; preds = %bb.cn
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %46, ptr noundef nonnull align 8 dereferenceable(124) %7)
          to label %bb.cp unwind label %.body.i225

.body.i225:                                       ; preds = %bb.co, %bb.cn, %.noexc226
  %i.gs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !1593
  br label %.body227

bb.cp:                                            ; preds = %bb.co
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !1593
  call void @llvm.lifetime.end.p0(ptr nonnull %8), !noalias !1592
  call void @llvm.lifetime.end.p0(ptr nonnull %9), !noalias !1592
  %i.gt = load ptr, ptr %46, align 8, !tbaa !43, !noalias !1594 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !1594
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !1595
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !372, !noalias !1595
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %5, ptr noundef %i.gv, i32 noundef 20)
          to label %.noexc231 unwind label %bb.dj

.noexc231:                                        ; preds = %bb.cp
  store ptr %i.gt, ptr %6, align 8, !tbaa !370, !noalias !1595
  %i.gw = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %5, ptr noundef nonnull align 8 %6)
          to label %bb.cq unwind label %.body.i230, !noalias !1595 ; 0 uses

bb.cq:                                            ; preds = %.noexc231
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %45, ptr noundef nonnull align 8 dereferenceable(124) %5)
          to label %bb.cr unwind label %.body.i230

.body.i230:                                       ; preds = %bb.cq, %.noexc231
  %i.gx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !1595
  br label %.body232

bb.cr:                                            ; preds = %bb.cq
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !1595
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !1594
  %i.gy = load ptr, ptr %46, align 8, !tbaa !43   ; 3 uses
  %i.gz = load i64, ptr %i.gy, align 8            ; 3 uses
  %i.ha = and i64 %i.gz, 1152920405095219200
  %.not.i.i235 = icmp eq i64 %i.ha, 1152920405095219200
  br i1 %.not.i.i235, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit236, label %bb.cs, !prof !333

bb.cs:                                            ; preds = %bb.cr
  %i.hb = add i64 %i.gz, 1152920405095219200
  %i.hc = and i64 %i.hb, 1152920405095219200      ; 2 uses
  %i.hd = and i64 %i.gz, -1152920405095219201
  %i.he = or disjoint i64 %i.hc, %i.hd
  store i64 %i.he, ptr %i.gy, align 8
  %i.hf = icmp eq i64 %i.hc, 0
  br i1 %i.hf, label %bb.ct, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit236, !prof !333

bb.ct:                                            ; preds = %bb.cs
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gy)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit236 unwind label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.hg = landingpad { ptr, i32 }
          catch ptr null
  %i.hh = extractvalue { ptr, i32 } %i.hg, 0
  call void @__clang_call_terminate(ptr %i.hh) #29
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit236: ; preds = %bb.cr, %bb.cs, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #25
  br label %.critedge110

.critedge110:                                     ; preds = %bb.ck, %bb.cj, %bb.cl, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit236
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #25
  %i.hi = load ptr, ptr %25, align 8, !tbaa !370, !noalias !1596 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  %i.hk = load ptr, ptr %24, align 8, !tbaa !370, !noalias !1596
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !1596
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !1596
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !1597
  %i.hl = load ptr, ptr %i.hj, align 8, !tbaa !372, !noalias !1597
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef %i.hl, i32 noundef 5)
          to label %.noexc238 unwind label %bb.dk

.noexc238:                                        ; preds = %.critedge110
  store ptr %i.hi, ptr %3, align 8, !tbaa !370, !noalias !1597
  %i.hm = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 %3)
          to label %bb.cv unwind label %.body.i237, !noalias !1597

bb.cv:                                            ; preds = %.noexc238
  store ptr %i.hk, ptr %4, align 8, !tbaa !370, !noalias !1597
  %i.hn = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %i.hm, ptr noundef nonnull align 8 %4)
          to label %bb.cw unwind label %.body.i237, !noalias !1597 ; 0 uses

bb.cw:                                            ; preds = %bb.cv
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %47, ptr noundef nonnull align 8 dereferenceable(124) %2)
          to label %bb.cx unwind label %.body.i237

.body.i237:                                       ; preds = %bb.cw, %bb.cv, %.noexc238
  %i.ho = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !1597
  br label %.body239

bb.cx:                                            ; preds = %bb.cw
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !1597
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !1596
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !1596
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 2480
  %i.hq = load ptr, ptr %47, align 8, !tbaa !43
  store ptr %i.hq, ptr %48, align 8, !tbaa !370
  %i.hr = load ptr, ptr %45, align 8, !tbaa !43
  store ptr %i.hr, ptr %49, align 8, !tbaa !370
  %i.hs = invoke noundef zeroext i1 @_ZN4cvc58internal6theory6arrays16InferenceManager15assertInferenceENS0_12NodeTemplateILb0EEEbNS1_11InferenceIdES5_NS_9ProofRuleE(ptr noundef nonnull align 8 dereferenceable(248) %i.hp, ptr noundef nonnull align 8 %48, i1 noundef zeroext true, i32 noundef 81, ptr noundef nonnull align 8 %49, i32 noundef 84)
          to label %bb.cy unwind label %bb.dl     ; 0 uses

bb.cy:                                            ; preds = %bb.cx
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.hu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal7IntStatppEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ht)
          to label %bb.cz unwind label %bb.dl     ; 0 uses

bb.cz:                                            ; preds = %bb.cy
  %i.hv = load ptr, ptr %47, align 8, !tbaa !43   ; 3 uses
  %i.hw = load i64, ptr %i.hv, align 8            ; 3 uses
  %i.hx = and i64 %i.hw, 1152920405095219200
  %.not.i.i242 = icmp eq i64 %i.hx, 1152920405095219200
  br i1 %.not.i.i242, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit243, label %bb.da, !prof !333

bb.da:                                            ; preds = %bb.cz
  %i.hy = add i64 %i.hw, 1152920405095219200
  %i.hz = and i64 %i.hy, 1152920405095219200      ; 2 uses
  %i.ia = and i64 %i.hw, -1152920405095219201
  %i.ib = or disjoint i64 %i.hz, %i.ia
  store i64 %i.ib, ptr %i.hv, align 8
  %i.ic = icmp eq i64 %i.hz, 0
  br i1 %i.ic, label %bb.db, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit243, !prof !333

bb.db:                                            ; preds = %bb.da
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.hv)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit243 unwind label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.id = landingpad { ptr, i32 }
          catch ptr null
  %i.ie = extractvalue { ptr, i32 } %i.id, 0
  call void @__clang_call_terminate(ptr %i.ie) #29
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit243: ; preds = %bb.cz, %bb.da, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #25
  %i.if = load ptr, ptr %45, align 8, !tbaa !43   ; 3 uses
  %i.ig = load i64, ptr %i.if, align 8            ; 3 uses
  %i.ih = and i64 %i.ig, 1152920405095219200
  %.not.i.i244 = icmp eq i64 %i.ih, 1152920405095219200
  br i1 %.not.i.i244, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit245, label %bb.dd, !prof !333

bb.dd:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit243
  %i.ii = add i64 %i.ig, 1152920405095219200
  %i.ij = and i64 %i.ii, 1152920405095219200      ; 2 uses
  %i.ik = and i64 %i.ig, -1152920405095219201
  %i.il = or disjoint i64 %i.ij, %i.ik
  store i64 %i.il, ptr %i.if, align 8
  %i.im = icmp eq i64 %i.ij, 0
  br i1 %i.im, label %bb.de, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit245, !prof !333

bb.de:                                            ; preds = %bb.dd
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.if)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit245 unwind label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.in = landingpad { ptr, i32 }
          catch ptr null
  %i.io = extractvalue { ptr, i32 } %i.in, 0
  call void @__clang_call_terminate(ptr %i.io) #29
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit245: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit243, %bb.dd, %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #25
  br label %.critedge106.thread

bb.dg:                                            ; preds = %bb.ak, %bb.ai, %bb.ah, %bb.ag, %bb.ce
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

bb.dh:                                            ; preds = %bb.cl, %bb.cg, %.critedge108
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.di:                                            ; preds = %bb.cm
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %.body227

bb.dj:                                            ; preds = %bb.cp
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %.body232

.body232:                                         ; preds = %.body.i230, %bb.dj
  %eh.lpad-body233 = phi { ptr, i32 } [ %i.is, %bb.dj ], [ %i.gx, %.body.i230 ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %46) #25
  br label %.body227

.body227:                                         ; preds = %bb.di, %.body.i225, %.body232
  %.pn74 = phi { ptr, i32 } [ %eh.lpad-body233, %.body232 ], [ %i.ir, %bb.di ], [ %i.gs, %.body.i225 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #25
  br label %bb.dm

bb.dk:                                            ; preds = %.critedge110
  %i.it = landingpad { ptr, i32 }
          cleanup
  br label %.body239

bb.dl:                                            ; preds = %bb.cy, %bb.cx
  %i.iu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %47) #25
  br label %.body239

.body239:                                         ; preds = %bb.dk, %.body.i237, %bb.dl
  %.pn76.pn = phi { ptr, i32 } [ %i.iu, %bb.dl ], [ %i.it, %bb.dk ], [ %i.ho, %.body.i237 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #25
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %45) #25
  br label %bb.dm

bb.dm:                                            ; preds = %.body227, %.body239, %bb.dh
  %.pn76.pn.pn = phi { ptr, i32 } [ %.pn76.pn, %.body239 ], [ %i.iq, %bb.dh ], [ %.pn74, %.body227 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #25
  br label %bb.dt

.critedge106.thread:                              ; preds = %.critedge, %bb.aj, %.critedge106, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit245, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit183
  %i.iv = load ptr, ptr %31, align 8, !tbaa !43   ; 3 uses
  %i.iw = load i64, ptr %i.iv, align 8            ; 3 uses
  %i.ix = and i64 %i.iw, 1152920405095219200
  %.not.i.i249 = icmp eq i64 %i.ix, 1152920405095219200
  br i1 %.not.i.i249, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit250, label %bb.dn, !prof !333

bb.dn:                                            ; preds = %.critedge106.thread
  %i.iy = add i64 %i.iw, 1152920405095219200
  %i.iz = and i64 %i.iy, 1152920405095219200      ; 2 uses
  %i.ja = and i64 %i.iw, -1152920405095219201
  %i.jb = or disjoint i64 %i.iz, %i.ja
  store i64 %i.jb, ptr %i.iv, align 8
  %i.jc = icmp eq i64 %i.iz, 0
  br i1 %i.jc, label %bb.do, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit250, !prof !333

bb.do:                                            ; preds = %bb.dn
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.iv)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit250 unwind label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.jd = landingpad { ptr, i32 }
          catch ptr null
  %i.je = extractvalue { ptr, i32 } %i.jd, 0
  call void @__clang_call_terminate(ptr %i.je) #29
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit250: ; preds = %.critedge106.thread, %bb.dn, %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #25
  %i.jf = load ptr, ptr %30, align 8, !tbaa !43   ; 3 uses
  %i.jg = load i64, ptr %i.jf, align 8            ; 3 uses
  %i.jh = and i64 %i.jg, 1152920405095219200
  %.not.i.i251 = icmp eq i64 %i.jh, 1152920405095219200
  br i1 %.not.i.i251, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit252, label %bb.dq, !prof !333

bb.dq:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit250
  %i.ji = add i64 %i.jg, 1152920405095219200
  %i.jj = and i64 %i.ji, 1152920405095219200      ; 2 uses
  %i.jk = and i64 %i.jg, -1152920405095219201
  %i.jl = or disjoint i64 %i.jj, %i.jk
  store i64 %i.jl, ptr %i.jf, align 8
  %i.jm = icmp eq i64 %i.jj, 0
  br i1 %i.jm, label %bb.dr, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit252, !prof !333

bb.dr:                                            ; preds = %bb.dq
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.jf)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit252 unwind label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.jn = landingpad { ptr, i32 }
          catch ptr null
  %i.jo = extractvalue { ptr, i32 } %i.jn, 0
  call void @__clang_call_terminate(ptr %i.jo) #29
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit252: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit250, %bb.dq, %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #25
  br label %.critedge100.thread

.critedge100.thread:                              ; preds = %bb.v, %.critedge100, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit252
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  ret void

bb.dt:                                            ; preds = %bb.dg, %bb.dm, %.body163
  %.pn85.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ip, %bb.dg ], [ %.pn76.pn.pn, %bb.dm ], [ %.pn85.pn.pn, %.body163 ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %31) #25
  br label %.body127

.body127:                                         ; preds = %bb.bm, %bb.af, %bb.dt
  %.pn85.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn85.pn.pn.pn.pn.pn, %bb.dt ], [ %i.el, %bb.bm ], [ %i.bd, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #25
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %30) #25
  br label %.body124

.body124:                                         ; preds = %bb.bl, %bb.ab, %.body127
  %.pn85.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn85.pn.pn.pn.pn.pn.pn, %.body127 ], [ %i.ek, %bb.bl ], [ %i.ax, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #25
  br label %.body121

.body121:                                         ; preds = %.body124, %bb.bk, %bb.s
  %.pn85.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aa, %bb.s ], [ %.pn85.pn.pn.pn.pn.pn.pn.pn, %.body124 ], [ %i.ej, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25
  br label %.body117

.body117:                                         ; preds = %bb.n, %.body121
  %.pn85.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn85.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body121 ], [ %i.t, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  br label %common.resume
}

declare void @_ZN4cvc58internal6theory9Valuation13ensureLiteralENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef align 8) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory6arrays12TheoryArrays22getNextDecisionRequestEv(ptr dead_on_unwind noalias writable sret(%"class.cvc5::internal::NodeTemplate") align 8 initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(6193) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 5568
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 5648 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !592  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 5632 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !340
  %i.f = icmp eq i64 %i.c, %i.e
  br i1 %i.f, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 5608 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !342
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.c
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !43   ; 5 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !43
  %i.k = load i64, ptr %i.j, align 8              ; 3 uses
  %i.l = lshr i64 %i.k, 40
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = and i32 %i.m, 1048575                    ; 3 uses
  %i.o = icmp samesign ult i32 %i.n, 1048574
  br i1 %i.o, label %bb.c, label %bb.d, !prof !334

bb.c:                                             ; preds = %bb.b
  %i.p = add nuw nsw i32 %i.n, 1
  %i.q = zext nneg i32 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 40
  %i.s = and i64 %i.k, -1152920405095219201
  %i.t = or i64 %i.r, %i.s
  store i64 %i.t, ptr %i.j, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.u = icmp eq i32 %i.n, 1048574
  br i1 %i.u, label %bb.e, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !333

bb.e:                                             ; preds = %bb.d
  %i.v = or i64 %i.k, 1152920405095219200
  store i64 %i.v, ptr %i.j, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.j)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 5576
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !60   ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !68
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !70
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !71
  %i.ad = icmp eq ptr %i.x, %i.ac
  br i1 %i.ad, label %_ZN4cvc57context10ContextObj11makeCurrentEv.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  invoke void @_ZN4cvc57context10ContextObj6updateEv(ptr noundef nonnull align 8 dereferenceable(96) %i.a)
          to label %_ZN4cvc57context10ContextObj11makeCurrentEv.exit.i unwind label %bb.h

_ZN4cvc57context10ContextObj11makeCurrentEv.exit.i: ; preds = %bb.f, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.ae = load i64, ptr %i.b, align 8, !tbaa !592
  %i.af = add i64 %i.ae, 1                        ; 3 uses
  store i64 %i.af, ptr %i.b, align 8, !tbaa !592
  %i.ag = load i64, ptr %i.d, align 8, !tbaa !340
  %i.ah = icmp eq i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.g, label %_ZN4cvc57context7CDQueueINS_8internal12NodeTemplateILb1EEENS0_14DefaultCleanUpIS4_EESaIS4_EE3popEv.exit

bb.g:                                             ; preds = %_ZN4cvc57context10ContextObj11makeCurrentEv.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 5656 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !593 ; 3 uses
  %.not.i = icmp eq i64 %i.aj, %i.af
  br i1 %.not.i, label %_ZN4cvc57context7CDQueueINS_8internal12NodeTemplateILb1EEENS0_14DefaultCleanUpIS4_EESaIS4_EE3popEv.exit, label %_ZN4cvc57context6CDListINS_8internal12NodeTemplateILb1EEENS0_14DefaultCleanUpIS4_EESaIS4_EE12truncateListEm.exit.i

_ZN4cvc57context6CDListINS_8internal12NodeTemplateILb1EEENS0_14DefaultCleanUpIS4_EESaIS4_EE12truncateListEm.exit.i: ; preds = %bb.g
  store i64 %i.aj, ptr %i.d, align 8, !tbaa !340
  %i.ak = load ptr, ptr %i.g, align 8, !tbaa !341 ; 3 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.aj
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 5616
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !341
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ap, %i.ao
  %i.ar = getelementptr inbounds i8, ptr %i.ak, i64 %i.aq
  %i.as = invoke ptr @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS3_S5_EES9_(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr %i.al, ptr %i.ar)
          to label %.noexc3 unwind label %bb.h    ; 0 uses

.noexc3:                                          ; preds = %_ZN4cvc57context6CDListINS_8internal12NodeTemplateILb1EEENS0_14DefaultCleanUpIS4_EESaIS4_EE12truncateListEm.exit.i
  %i.at = load i64, ptr %i.ai, align 8, !tbaa !593
  store i64 %i.at, ptr %i.b, align 8, !tbaa !592
  br label %_ZN4cvc57context7CDQueueINS_8internal12NodeTemplateILb1EEENS0_14DefaultCleanUpIS4_EESaIS4_EE3popEv.exit

bb.h:                                             ; preds = %_ZN4cvc57context6CDListINS_8internal12NodeTemplateILb1EEENS0_14DefaultCleanUpIS4_EESaIS4_EE12truncateListEm.exit.i, %bb.f
  %i.au = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #25
  resume { ptr, i32 } %i.au

bb.i:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1600)
  %i.av = load ptr, ptr @_ZN4cvc58internal12NodeTemplateILb1EE6s_nullE, align 8, !tbaa !43, !noalias !1600 ; 5 uses
  store ptr %i.av, ptr %0, align 8, !tbaa !43, !alias.scope !1600
  %i.aw = load i64, ptr %i.av, align 8, !noalias !1600 ; 3 uses
  %i.ax = lshr i64 %i.aw, 40
  %i.ay = trunc nuw nsw i64 %i.ax to i32
  %i.az = and i32 %i.ay, 1048575                  ; 3 uses
  %i.ba = icmp samesign ult i32 %i.az, 1048574
  br i1 %i.ba, label %bb.j, label %bb.k, !prof !334

bb.j:                                             ; preds = %bb.i
end_hunk_0
