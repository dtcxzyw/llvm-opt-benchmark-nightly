Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/theory_ff_rewriter?download=true
inline.NumInlined: 1087
inline.NumDeleted: 437
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4cvc58internal6theory2ff26TheoryFiniteFieldsRewriterC2EPNS0_11NodeManagerE:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store i32 0, ptr %i.b, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.c, align 8, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.b, ptr %i.d, align 8, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.b, ptr %i.e, align 8, !tbaa !26
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.f, align 8, !tbaa !27
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4cvc58internal6theory2ff26TheoryFiniteFieldsRewriterE, i64 16), ptr %0, align 8, !tbaa !29
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory2ff26TheoryFiniteFieldsRewriter6mkNaryENS0_4kind6Kind_tEOSt6vectorINS0_12NodeTemplateILb1EEESaIS8_EE(ptr dead_on_unwind noalias writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cvc5::internal::NodeTemplate.78", align 8 ; 4 uses
  %5 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = load ptr, ptr %3, align 8, !tbaa !33     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = icmp eq i64 %i.f, 8
  br i1 %i.g, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !36   ; 5 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !36
  %i.i = load i64, ptr %i.h, align 8              ; 3 uses
  %i.j = lshr i64 %i.i, 40
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = and i32 %i.k, 1048575                    ; 3 uses
  %i.m = icmp samesign ult i32 %i.l, 1048574
  br i1 %i.m, label %bb.c, label %bb.d, !prof !37

bb.c:                                             ; preds = %bb.b
  %i.n = add nuw nsw i32 %i.l, 1
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 40
  %i.q = and i64 %i.i, -1152920405095219201
  %i.r = or i64 %i.p, %i.q
  store i64 %i.r, ptr %i.h, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.s = icmp eq i32 %i.l, 1048574
  br i1 %i.s, label %bb.e, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !38

bb.e:                                             ; preds = %bb.d
  %i.t = or i64 %i.i, 1152920405095219200
  store i64 %i.t, ptr %i.h, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.h)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.f:                                             ; preds = %bb.a
  %i.u = tail call noundef ptr @_ZNK4cvc58internal6theory14TheoryRewriter11nodeManagerEv(ptr noundef nonnull align 8 dereferenceable(64) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20, !noalias !73
  call void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %5, ptr noundef nonnull align 8 dereferenceable(3592) %i.u, i32 noundef %2), !noalias !73
  %i.v = load ptr, ptr %3, align 8, !tbaa !39, !noalias !73 ; 2 uses
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !39, !noalias !73 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !73
  %.not6.i.i.i = icmp eq ptr %i.w, %i.v
  br i1 %.not6.i.i.i, label %.loopexit4.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.noexc.i
  %.sroa.0.07.i.i.i = phi ptr [ %i.z, %.noexc.i ], [ %i.v, %bb.f ] ; 2 uses
  %i.x = load ptr, ptr %.sroa.0.07.i.i.i, align 8, !tbaa !36, !noalias !73
  store ptr %i.x, ptr %4, align 8, !tbaa !41, !noalias !73
  %i.y = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilder6appendENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %5, ptr noundef nonnull align 8 %4)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !73 ; 0 uses

.noexc.i:                                         ; preds = %.lr.ph.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.z, %i.w
  br i1 %.not.i.i.i, label %.loopexit4.i, label %.lr.ph.i.i.i, !llvm.loop !72

.loopexit4.i:                                     ; preds = %.noexc.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !73
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(124) %5)
          to label %_ZN4cvc58internal11NodeManager6mkNodeILb1EEENS0_12NodeTemplateILb1EEENS0_4kind6Kind_tERKSt6vectorINS3_IXT_EEESaIS8_EE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i, %.loopexit4.i
  %lpad.loopexit.split-lp8 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20, !noalias !73
  resume { ptr, i32 } %lpad.loopexit.split-lp8

_ZN4cvc58internal11NodeManager6mkNodeILb1EEENS0_12NodeTemplateILb1EEENS0_4kind6Kind_tERKSt6vectorINS3_IXT_EEESaIS8_EE.exit: ; preds = %.loopexit4.i
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20, !noalias !73
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.e, %bb.d, %bb.c, %_ZN4cvc58internal11NodeManager6mkNodeILb1EEENS0_12NodeTemplateILb1EEENS0_4kind6Kind_tERKSt6vectorINS3_IXT_EEESaIS8_EE.exit
  ret void
}

declare noundef ptr @_ZNK4cvc58internal6theory14TheoryRewriter11nodeManagerEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory2ff26TheoryFiniteFieldsRewriter11parseScalarENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind noalias writable sret(%"struct.std::pair") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %4 = alloca %"class.cvc5::internal::FiniteFieldValue", align 8 ; 10 uses
  %5 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate.78", align 8 ; 5 uses
  %7 = alloca %"class.std::vector", align 8       ; 8 uses
  %8 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZNK4cvc58internal12NodeTemplateILb0EE7getTypeEb(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %2, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.a = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK4cvc58internal8TypeNode9getFfSizeEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.b unwind label %bb.ad

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4cvc58internal16FiniteFieldValue5mkOneERKNS0_7IntegerE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::FiniteFieldValue") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.c unwind label %bb.ad

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.b = load ptr, ptr %2, align 8, !tbaa !41     ; 5 uses
  store ptr %i.b, ptr %5, align 8, !tbaa !36
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = lshr i64 %i.c, 40
  %i.e = trunc nuw nsw i64 %i.d to i32
  %i.f = and i32 %i.e, 1048575                    ; 3 uses
  %i.g = icmp samesign ult i32 %i.f, 1048574
  br i1 %i.g, label %bb.d, label %bb.e, !prof !37

bb.d:                                             ; preds = %bb.c
  %i.h = add nuw nsw i32 %i.f, 1
  %i.i = zext nneg i32 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 40
  %i.k = and i64 %i.c, -1152920405095219201
  %i.l = or i64 %i.j, %i.k
  store i64 %i.l, ptr %i.b, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit

bb.e:                                             ; preds = %bb.c
  %i.m = icmp eq i32 %i.f, 1048574
  br i1 %i.m, label %bb.f, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit, !prof !38

bb.f:                                             ; preds = %bb.e
  %i.n = or i64 %i.c, 1152920405095219200
  store i64 %i.n, ptr %i.b, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit unwind label %bb.ae

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit: ; preds = %bb.e, %bb.d, %bb.f
  %i.o = load ptr, ptr %2, align 8, !tbaa !41     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i64, ptr %i.p, align 8
  %i.r = and i64 %i.q, 1023
  %i.s = icmp eq i64 %i.r, 155
  br i1 %i.s, label %bb.g, label %.critedge.thread

bb.g:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %i.t = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef 155)
          to label %bb.h unwind label %bb.ag

bb.h:                                             ; preds = %bb.g
  %i.u = icmp eq i32 %i.t, 2
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.w = zext i1 %i.u to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !43, !noalias !78
  store ptr %i.y, ptr %6, align 8, !tbaa !41, !alias.scope !78
  %i.z = invoke noundef zeroext i1 @_ZNK4cvc58internal12NodeTemplateILb0EE7isConstEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.critedge unwind label %bb.ag

.critedge:                                        ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br i1 %i.z, label %bb.i, label %.critedge.thread

bb.i:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.aa = load ptr, ptr %2, align 8, !tbaa !41    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = and i32 %i.ad, 1023                     ; 2 uses
  %i.af = icmp eq i32 %i.ae, 1023
  %i.ag = select i1 %i.af, i32 -1, i32 %i.ae
  %i.ah = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.ag)
          to label %bb.j unwind label %bb.ah

bb.j:                                             ; preds = %bb.i
  %i.ai = icmp eq i32 %i.ah, 2
  %i.aj = select i1 %i.ai, i64 40, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.aj ; 3 uses
  %i.al = load ptr, ptr %2, align 8, !tbaa !41    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %9 = load i64, ptr %i.an, align 8
  %10 = lshr i64 %9, 32
  %11 = and i64 %10, 67108863
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %11 ; 3 uses
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.ak to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 5 uses
  %i.as = icmp ugt i64 %i.ar, 9223372036854775800
  br i1 %i.as, label %bb.k, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #21
          to label %.noexc.i unwind label %bb.ah

.noexc.i:                                         ; preds = %bb.k
  unreachable

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i: ; preds = %bb.j
  %.not.i.i.i = icmp eq ptr %i.ao, %i.ak
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i, label %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i

_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %i.at = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #22
          to label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i unwind label %bb.ah

_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %.pr.i = phi ptr [ null, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i ], [ %i.at, %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i ] ; 9 uses
  store ptr %.pr.i, ptr %7, align 8, !tbaa !33
  %i.au = getelementptr inbounds nuw i8, ptr %.pr.i, i64 %i.ar
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.au, ptr %i.av, align 8, !tbaa !44
  %i.aw = invoke noundef ptr @_ZSt16__do_uninit_copyIN4cvc58internal4expr9NodeValue8iteratorINS1_12NodeTemplateILb0EEEEEPNS5_ILb1EEEET0_T_SB_SA_(ptr nonnull %i.ak, ptr nonnull %i.ao, ptr noundef %.pr.i)
          to label %bb.n unwind label %bb.l       ; 3 uses

bb.l:                                             ; preds = %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i7.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i7.i, label %.body, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %i.ar) #23
  br label %.body

bb.n:                                             ; preds = %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  invoke void @_ZN4cvc58internal6theory2ff26TheoryFiniteFieldsRewriter6mkNaryENS0_4kind6Kind_tEOSt6vectorINS0_12NodeTemplateILb1EEESaIS8_EE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %8, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 155, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.o unwind label %bb.ai

bb.o:                                             ; preds = %bb.n
  %i.ay = load ptr, ptr %5, align 8, !tbaa !36    ; 4 uses
  %i.az = load ptr, ptr %8, align 8, !tbaa !36
  %.not.i = icmp eq ptr %i.ay, %i.az
  br i1 %.not.i, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, label %bb.p, !prof !38

bb.p:                                             ; preds = %bb.o
  %i.ba = load i64, ptr %i.ay, align 8            ; 3 uses
  %i.bb = and i64 %i.ba, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.bb, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, label %bb.q, !prof !38

bb.q:                                             ; preds = %bb.p
  %i.bc = add i64 %i.ba, 1152920405095219200
  %i.bd = and i64 %i.bc, 1152920405095219200      ; 2 uses
  %i.be = and i64 %i.ba, -1152920405095219201
  %i.bf = or disjoint i64 %i.bd, %i.be
  store i64 %i.bf, ptr %i.ay, align 8
  %i.bg = icmp eq i64 %i.bd, 0
  br i1 %i.bg, label %bb.r, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, !prof !38

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i unwind label %bb.aj

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i:    ; preds = %bb.r, %bb.q, %bb.p
  %i.bh = load ptr, ptr %8, align 8, !tbaa !36    ; 5 uses
  store ptr %i.bh, ptr %5, align 8, !tbaa !36
  %i.bi = load i64, ptr %i.bh, align 8            ; 3 uses
  %i.bj = lshr i64 %i.bi, 40
  %i.bk = trunc nuw nsw i64 %i.bj to i32
  %i.bl = and i32 %i.bk, 1048575                  ; 3 uses
  %i.bm = icmp samesign ult i32 %i.bl, 1048574
  br i1 %i.bm, label %bb.s, label %bb.t, !prof !37

bb.s:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.bn = add nuw nsw i32 %i.bl, 1
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = shl nuw nsw i64 %i.bo, 40
  %i.bq = and i64 %i.bi, -1152920405095219201
  %i.br = or i64 %i.bp, %i.bq
  store i64 %i.br, ptr %i.bh, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit

bb.t:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.bs = icmp eq i32 %i.bl, 1048574
  br i1 %i.bs, label %bb.u, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, !prof !38

bb.u:                                             ; preds = %bb.t
  %i.bt = or i64 %i.bi, 1152920405095219200
  store i64 %i.bt, ptr %i.bh, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit unwind label %bb.aj

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit: ; preds = %bb.t, %bb.s, %bb.o, %bb.u
  %i.bu = load ptr, ptr %8, align 8, !tbaa !36    ; 3 uses
  %i.bv = load i64, ptr %i.bu, align 8            ; 3 uses
  %i.bw = and i64 %i.bv, 1152920405095219200
  %.not.i.i33 = icmp eq i64 %i.bw, 1152920405095219200
  br i1 %.not.i.i33, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.v, !prof !38

bb.v:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit
  %i.bx = add i64 %i.bv, 1152920405095219200
  %i.by = and i64 %i.bx, 1152920405095219200      ; 2 uses
  %i.bz = and i64 %i.bv, -1152920405095219201
  %i.ca = or disjoint i64 %i.by, %i.bz
  store i64 %i.ca, ptr %i.bu, align 8
  %i.cb = icmp eq i64 %i.by, 0
  br i1 %i.cb, label %bb.w, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !38

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bu)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  call void @__clang_call_terminate(ptr %i.cd) #24
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.ce = load ptr, ptr %2, align 8, !tbaa !41, !noalias !79 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !noalias !79
  %i.ch = trunc i64 %i.cg to i32
  %i.ci = and i32 %i.ch, 1023                     ; 2 uses
  %i.cj = icmp eq i32 %i.ci, 1023
  %i.ck = select i1 %i.cj, i32 -1, i32 %i.ci
  %i.cl = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.ck)
          to label %bb.y unwind label %bb.al

bb.y:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.cm = icmp eq i32 %i.cl, 2
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.co = zext i1 %i.cm to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.co
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !43, !noalias !79
  %i.cr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4cvc58internal4expr9NodeValue8getConstINS0_16FiniteFieldValueEEERKT_v(ptr noundef nonnull align 8 dereferenceable(24) %i.cq)
          to label %_ZNK4cvc58internal12NodeTemplateILb0EE8getConstINS0_16FiniteFieldValueEEERKT_v.exit unwind label %bb.al ; 2 uses

_ZNK4cvc58internal12NodeTemplateILb0EE8getConstINS0_16FiniteFieldValueEEERKT_v.exit: ; preds = %bb.y
  invoke void @__gmpz_set(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.cr)
          to label %.noexc39 unwind label %bb.al

.noexc39:                                         ; preds = %_ZNK4cvc58internal12NodeTemplateILb0EE8getConstINS0_16FiniteFieldValueEEERKT_v.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  invoke void @__gmpz_set(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, ptr noundef nonnull align 8 dereferenceable(16) %i.ct)
          to label %_ZN4cvc58internal16FiniteFieldValueaSERKS1_.exit unwind label %bb.al

_ZN4cvc58internal16FiniteFieldValueaSERKS1_.exit: ; preds = %.noexc39
  %.not4.i.i.i = icmp eq ptr %.pr.i, %i.aw
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4cvc58internal16FiniteFieldValueaSERKS1_.exit, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.de, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i ], [ %.pr.i, %_ZN4cvc58internal16FiniteFieldValueaSERKS1_.exit ] ; 2 uses
  %i.cu = load ptr, ptr %.05.i.i.i, align 8, !tbaa !36 ; 3 uses
  %i.cv = load i64, ptr %i.cu, align 8            ; 3 uses
  %i.cw = and i64 %i.cv, 1152920405095219200
  %.not.i.i.i.i.i.i = icmp eq i64 %i.cw, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, label %bb.z, !prof !38

bb.z:                                             ; preds = %.lr.ph.i.i.i
  %i.cx = add i64 %i.cv, 1152920405095219200
  %i.cy = and i64 %i.cx, 1152920405095219200      ; 2 uses
  %i.cz = and i64 %i.cv, -1152920405095219201
  %i.da = or disjoint i64 %i.cy, %i.cz
  store i64 %i.da, ptr %i.cu, align 8
  %i.db = icmp eq i64 %i.cy, 0
  br i1 %i.db, label %bb.aa, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, !prof !38

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cu)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dc = landingpad { ptr, i32 }
          catch ptr null
  %i.dd = extractvalue { ptr, i32 } %i.dc, 0
  call void @__clang_call_terminate(ptr %i.dd) #24
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i: ; preds = %bb.aa, %bb.z, %.lr.ph.i.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i41 = icmp eq ptr %i.de, %i.aw
  br i1 %.not.i.i.i41, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, %_ZN4cvc58internal16FiniteFieldValueaSERKS1_.exit
  %.not.i.i1.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, label %bb.ac
end_hunk_0
begin_hunk_1_@_ZN4cvc58internal6theory2ff26TheoryFiniteFieldsRewriter16postRewriteFfAddENS0_12NodeTemplateILb0EEE:bb.a
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, label %bb.da

bb.da:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i
  %i.he = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !44
  %i.hg = ptrtoint ptr %i.hf to i64
  %i.hh = ptrtoint ptr %i.hd to i64
  %i.hi = sub i64 %i.hg, %i.hh
  call void @_ZdlPvm(ptr noundef nonnull %i.hd, i64 noundef %i.hi) #23
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  %i.hj = load ptr, ptr %14, align 8, !tbaa !53   ; 3 uses
  %.not.i.i.i74 = icmp eq ptr %i.hj, null
  br i1 %.not.i.i.i74, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit, label %bb.db

bb.db:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit
  %i.hk = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !54
  %i.hm = ptrtoint ptr %i.hl to i64
  %i.hn = ptrtoint ptr %i.hj to i64
  %i.ho = sub i64 %i.hm, %i.hn
  call void @_ZdlPvm(ptr noundef nonnull %i.hj, i64 noundef %i.ho) #23
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  %i.hp = load ptr, ptr %i.d, align 8, !tbaa !24
  invoke void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_16FiniteFieldValueEESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef %i.hp)
          to label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_16FiniteFieldValueESt4lessIS3_ESaISt4pairIKS3_S4_EEED2Ev.exit unwind label %bb.dc

bb.dc:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit
  %i.hq = landingpad { ptr, i32 }
          catch ptr null
  %i.hr = extractvalue { ptr, i32 } %i.hq, 0
  call void @__clang_call_terminate(ptr %i.hr) #24
  unreachable

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_16FiniteFieldValueESt4lessIS3_ESaISt4pairIKS3_S4_EEED2Ev.exit: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  %i.hs = getelementptr inbounds nuw i8, ptr %12, i64 16
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.hs)
          to label %_ZN4cvc58internal7IntegerD2Ev.exit.i75 unwind label %bb.dd

bb.dd:                                            ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_16FiniteFieldValueESt4lessIS3_ESaISt4pairIKS3_S4_EEED2Ev.exit
  %i.ht = landingpad { ptr, i32 }
          catch ptr null
  %i.hu = extractvalue { ptr, i32 } %i.ht, 0
  call void @__clang_call_terminate(ptr %i.hu) #24
  unreachable

_ZN4cvc58internal7IntegerD2Ev.exit.i75:           ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_16FiniteFieldValueESt4lessIS3_ESaISt4pairIKS3_S4_EEED2Ev.exit
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %_ZN4cvc58internal16FiniteFieldValueD2Ev.exit76 unwind label %bb.de

bb.de:                                            ; preds = %_ZN4cvc58internal7IntegerD2Ev.exit.i75
  %i.hv = landingpad { ptr, i32 }
          catch ptr null
  %i.hw = extractvalue { ptr, i32 } %i.hv, 0
  call void @__clang_call_terminate(ptr %i.hw) #24
  unreachable

_ZN4cvc58internal16FiniteFieldValueD2Ev.exit76:   ; preds = %_ZN4cvc58internal7IntegerD2Ev.exit.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %i.hx = getelementptr inbounds nuw i8, ptr %11, i64 16
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.hx)
          to label %_ZN4cvc58internal7IntegerD2Ev.exit.i77 unwind label %bb.df

bb.df:                                            ; preds = %_ZN4cvc58internal16FiniteFieldValueD2Ev.exit76
  %i.hy = landingpad { ptr, i32 }
          catch ptr null
  %i.hz = extractvalue { ptr, i32 } %i.hy, 0
  call void @__clang_call_terminate(ptr %i.hz) #24
  unreachable

_ZN4cvc58internal7IntegerD2Ev.exit.i77:           ; preds = %_ZN4cvc58internal16FiniteFieldValueD2Ev.exit76
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %_ZN4cvc58internal16FiniteFieldValueD2Ev.exit78 unwind label %bb.dg

bb.dg:                                            ; preds = %_ZN4cvc58internal7IntegerD2Ev.exit.i77
  %i.ia = landingpad { ptr, i32 }
          catch ptr null
  %i.ib = extractvalue { ptr, i32 } %i.ia, 0
  call void @__clang_call_terminate(ptr %i.ib) #24
  unreachable

_ZN4cvc58internal16FiniteFieldValueD2Ev.exit78:   ; preds = %_ZN4cvc58internal7IntegerD2Ev.exit.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %i.ic = load ptr, ptr %10, align 8, !tbaa !46   ; 3 uses
  %i.id = load i64, ptr %i.ic, align 8            ; 3 uses
  %i.ie = and i64 %i.id, 1152920405095219200
  %.not.i.i79 = icmp eq i64 %i.ie, 1152920405095219200
  br i1 %.not.i.i79, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, label %bb.dh, !prof !38

bb.dh:                                            ; preds = %_ZN4cvc58internal16FiniteFieldValueD2Ev.exit78
  %i.if = add i64 %i.id, 1152920405095219200
  %i.ig = and i64 %i.if, 1152920405095219200      ; 2 uses
  %i.ih = and i64 %i.id, -1152920405095219201
  %i.ii = or disjoint i64 %i.ig, %i.ih
  store i64 %i.ii, ptr %i.ic, align 8
  %i.ij = icmp eq i64 %i.ig, 0
  br i1 %i.ij, label %bb.di, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, !prof !38

bb.di:                                            ; preds = %bb.dh
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ic)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit unwind label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.ik = landingpad { ptr, i32 }
          catch ptr null
  %i.il = extractvalue { ptr, i32 } %i.ik, 0
  call void @__clang_call_terminate(ptr %i.il) #24
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit:              ; preds = %_ZN4cvc58internal16FiniteFieldValueD2Ev.exit78, %bb.dh, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  ret void

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cl, %bb.cu, %bb.ax
  %.pn39.pn = phi { ptr, i32 } [ %.pn, %bb.ax ], [ %.pn33, %bb.cu ], [ %.pn35.pn.pn, %bb.cl ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %20) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  br label %.loopexit.split-lp102

.loopexit.split-lp102:                            ; preds = %.loopexit.split-lp102.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.o, %bb.af, %.loopexit.split-lp
  %.pn46.pn = phi { ptr, i32 } [ %i.aa, %bb.o ], [ %.pn43.pn, %bb.af ], [ %.pn39.pn, %.loopexit.split-lp ], [ %lpad.loopexit.split-lp151, %.loopexit.split-lp102.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.im = load ptr, ptr %14, align 8, !tbaa !53   ; 3 uses
  %.not.i.i.i80 = icmp eq ptr %i.im, null
  br i1 %.not.i.i.i80, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit81, label %bb.dk

bb.dk:                                            ; preds = %.loopexit.split-lp102
  %i.in = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !54
  %i.ip = ptrtoint ptr %i.io to i64
  %i.iq = ptrtoint ptr %i.im to i64
  %i.ir = sub i64 %i.ip, %i.iq
  call void @_ZdlPvm(ptr noundef nonnull %i.im, i64 noundef %i.ir) #23
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit81

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit81: ; preds = %.loopexit.split-lp102, %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_16FiniteFieldValueESt4lessIS3_ESaISt4pairIKS3_S4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @_ZN4cvc58internal16FiniteFieldValueD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %12) #20
  br label %bb.dl

bb.dl:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit81, %bb.h
  %.pn46.pn.pn = phi { ptr, i32 } [ %.pn46.pn, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit81 ], [ %i.s, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @_ZN4cvc58internal16FiniteFieldValueD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %11) #20
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.g
  %.pn46.pn.pn.pn = phi { ptr, i32 } [ %.pn46.pn.pn, %bb.dl ], [ %i.r, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  resume { ptr, i32 } %.pn46.pn.pn.pn
}

declare void @_ZN4cvc58internal16FiniteFieldValue6mkZeroERKNS0_7IntegerE(ptr dead_on_unwind writable sret(%"class.cvc5::internal::FiniteFieldValue") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4cvc58internal4expr9algorithm7flattenIJEEEvNS0_12NodeTemplateILb0EEERSt6vectorIS5_SaIS5_EEDpT_(ptr noundef align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
.lr.ph:
  %2 = alloca %"class.std::reverse_iterator", align 8 ; 4 uses
  %3 = alloca %"class.std::reverse_iterator", align 8 ; 4 uses
  %4 = alloca %"class.std::vector.85", align 8    ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.a = load ptr, ptr %0, align 8, !tbaa !41
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.b, align 8
  %i.c = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #22 ; 3 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !53
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !54
  %i.f = ptrtoint ptr %i.a to i64
  store i64 %i.f, ptr %i.c, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit
  %i.j = phi ptr [ %i.d, %.lr.ph ], [ %i.bx, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit ]
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !41   ; 5 uses
  store ptr %i.k, ptr %i.g, align 8, !tbaa !59
  %i.m = load ptr, ptr %0, align 8, !tbaa !41
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i64, ptr %i.n, align 8
  %i.p = trunc i64 %i.o to i32
  %i.q = and i32 %i.p, 1023                       ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = trunc i64 %i.s to i32
  %i.u = and i32 %i.t, 1023
  %i.v = icmp eq i32 %i.q, %i.u
  br i1 %i.v, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.w = icmp eq i32 %i.q, 1023
  %i.x = select i1 %i.w, i32 -1, i32 %i.q
  %i.y = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.x)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %5 = lshr i64 %i.s, 32
  %i.aa = and i64 %5, 67108863
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.aa
  %i.ac = icmp eq i32 %i.y, 2
  %spec.select.v.i.i = select i1 %i.ac, i64 32, i64 24
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 %spec.select.v.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.ad = load ptr, ptr %4, align 8, !tbaa !51    ; 2 uses
  %i.ae = ptrtoint ptr %i.k to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = getelementptr inbounds i8, ptr %i.ad, i64 %i.ag
  %i.ai = ptrtoint ptr %i.ab to i64
  store i64 %i.ai, ptr %2, align 8, !tbaa !62
  %i.aj = ptrtoint ptr %spec.select.i.i to i64
  store i64 %i.aj, ptr %3, align 8, !tbaa !62
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE15_M_range_insertISt16reverse_iteratorINS1_4expr9NodeValue8iteratorIS3_EEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EET_SH_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.ah, ptr noundef nonnull align 8 dead_on_return %2, ptr noundef nonnull align 8 dead_on_return %3)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit

bb.e:                                             ; preds = %bb.a
  %i.ak = load ptr, ptr %i.h, align 8, !tbaa !59  ; 6 uses
  %i.al = load ptr, ptr %i.i, align 8, !tbaa !54
  %.not.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.l, ptr %i.ak, align 8, !tbaa !41
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.am, ptr %i.h, align 8, !tbaa !59
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit

bb.g:                                             ; preds = %bb.e
  %i.an = load ptr, ptr %1, align 8, !tbaa !53    ; 7 uses
  %i.ao = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.ap = ptrtoint ptr %i.an to i64               ; 4 uses
  %i.aq = sub i64 %i.ao, %i.ap                    ; 3 uses
  %i.ar = icmp eq i64 %i.aq, 9223372036854775800
  br i1 %i.ar, label %bb.h, label %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #21
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.h
  unreachable

_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.as = ashr exact i64 %i.aq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.as, i64 1)
  %i.at = add nsw i64 %.sroa.speculated.i.i.i, %i.as ; 2 uses
  %i.au = icmp ult i64 %i.at, %i.as
  %i.av = call i64 @llvm.umin.i64(i64 %i.at, i64 1152921504606846975)
  %i.aw = select i1 %i.au, i64 1152921504606846975, i64 %i.av ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.aw, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ax = shl nuw nsw i64 %i.aw, 3
  %i.ay = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #22
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 8 uses

.noexc8:                                          ; preds = %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aq
  store ptr %i.l, ptr %i.az, align 8, !tbaa !41
  %.not13.i.i.i.i.i.i.i = icmp eq ptr %i.an, %i.ak
  br i1 %.not13.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc8
  %i.ba = ptrtoaddr ptr %i.ay to i64
  %i.bb = add i64 %i.ao, -8
  %i.bc = sub i64 %i.bb, %i.ap                    ; 2 uses
  %i.bd = lshr i64 %i.bc, 3
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bc, 24
  %i.bf = sub i64 %i.ap, %i.ba
  %diff.check = icmp ugt i64 %i.bf, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader39, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.be, 4611686018427387900     ; 3 uses
  %i.bg = shl i64 %n.vec, 3                       ; 2 uses
  %i.bh = getelementptr i8, ptr %i.ay, i64 %i.bg  ; 2 uses
  %i.bi = getelementptr i8, ptr %i.an, i64 %i.bg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ay, i64 %i.bj ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.an, i64 %i.bj ; 2 uses
  %i.bk = getelementptr i8, ptr %next.gep36, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep36, align 8, !tbaa !41
  %wide.load37 = load <2 x ptr>, ptr %i.bk, align 8, !tbaa !41
  %i.bl = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !41
  store <2 x ptr> %wide.load37, ptr %i.bl, align 8, !tbaa !41
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !102

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.be, %n.vec
  br i1 %cmp.n, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader39

.lr.ph.i.i.i.i.i.i.i.preheader39:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.015.i.i.i.i.i.i.i.ph = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bh, %middle.block ]
  %.01214.i.i.i.i.i.i.i.ph = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bi, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader39, %.lr.ph.i.i.i.i.i.i.i
  %.015.i.i.i.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i.i.i ], [ %.015.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader39 ] ; 2 uses
  %.01214.i.i.i.i.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i.i.i ], [ %.01214.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader39 ] ; 2 uses
  %i.bn = load ptr, ptr %.01214.i.i.i.i.i.i.i, align 8, !tbaa !41
  store ptr %i.bn, ptr %.015.i.i.i.i.i.i.i, align 8, !tbaa !41
  %i.bo = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bo, %i.ak
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !103

_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc8
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ay, %.noexc8 ], [ %i.bh, %middle.block ], [ %i.bp, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i35.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i35.i.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i
  %i.br = load ptr, ptr %i.i, align 8, !tbaa !54
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = sub i64 %i.bs, %i.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.bt) #23
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i
  store ptr %i.ay, ptr %1, align 8, !tbaa !53
  store ptr %i.bq, ptr %i.h, align 8, !tbaa !59
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.aw
  store ptr %i.bu, ptr %i.i, align 8, !tbaa !54
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.b, %bb.c, %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %bb.h
  %lpad.loopexit.split-lp40 = landingpad { ptr, i32 }
          cleanup
  %i.bv = load ptr, ptr %4, align 8, !tbaa !53    ; 3 uses
  %.not.i.i.i9 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i9, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit, label %bb.j

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.f, %bb.d
  %i.bw = load ptr, ptr %4, align 8, !tbaa !51    ; 4 uses
  %i.bx = load ptr, ptr %i.g, align 8, !tbaa !51  ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %._crit_edge, label %bb.a, !llvm.loop !104

bb.j:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bz = load ptr, ptr %i.e, align 8, !tbaa !54
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.bv to i64
  %i.cc = sub i64 %i.ca, %i.cb
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef %i.cc) #23
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit
  %.not.i.i.i11 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit13, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.cd = load ptr, ptr %i.e, align 8, !tbaa !54
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %i.bw to i64
  %i.cg = sub i64 %i.ce, %i.cf
  call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.cg) #23
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit13

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit13: ; preds = %._crit_edge, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit: ; preds = %bb.j, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  resume { ptr, i32 } %lpad.loopexit.split-lp40
}

declare void @_ZN4cvc58internalplERKNS0_16FiniteFieldValueES3_(ptr dead_on_unwind writable sret(%"class.cvc5::internal::FiniteFieldValue") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEENS1_16FiniteFieldValueEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_ZN4cvc58internal7IntegerD2Ev.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
end_hunk_1
begin_hunk_2_@_ZN4cvc58internal6theory2ff26TheoryFiniteFieldsRewriter17postRewriteFfMultENS0_12NodeTemplateILb0EEE:bb.a
  %i.es = sub i64 %i.eq, %i.er
  call void @_ZdlPvm(ptr noundef nonnull %i.en, i64 noundef %i.es) #23
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.et = getelementptr inbounds nuw i8, ptr %7, i64 16
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.et)
          to label %_ZN4cvc58internal7IntegerD2Ev.exit.i37 unwind label %bb.bl

bb.bl:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit
  %i.eu = landingpad { ptr, i32 }
          catch ptr null
  %i.ev = extractvalue { ptr, i32 } %i.eu, 0
  call void @__clang_call_terminate(ptr %i.ev) #24
  unreachable

_ZN4cvc58internal7IntegerD2Ev.exit.i37:           ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZN4cvc58internal16FiniteFieldValueD2Ev.exit38 unwind label %bb.bm

bb.bm:                                            ; preds = %_ZN4cvc58internal7IntegerD2Ev.exit.i37
  %i.ew = landingpad { ptr, i32 }
          catch ptr null
  %i.ex = extractvalue { ptr, i32 } %i.ew, 0
  call void @__clang_call_terminate(ptr %i.ex) #24
  unreachable

_ZN4cvc58internal16FiniteFieldValueD2Ev.exit38:   ; preds = %_ZN4cvc58internal7IntegerD2Ev.exit.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.ey = getelementptr inbounds nuw i8, ptr %6, i64 16
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.ey)
          to label %_ZN4cvc58internal7IntegerD2Ev.exit.i39 unwind label %bb.bn

bb.bn:                                            ; preds = %_ZN4cvc58internal16FiniteFieldValueD2Ev.exit38
  %i.ez = landingpad { ptr, i32 }
          catch ptr null
  %i.fa = extractvalue { ptr, i32 } %i.ez, 0
  call void @__clang_call_terminate(ptr %i.fa) #24
  unreachable

_ZN4cvc58internal7IntegerD2Ev.exit.i39:           ; preds = %_ZN4cvc58internal16FiniteFieldValueD2Ev.exit38
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZN4cvc58internal16FiniteFieldValueD2Ev.exit40 unwind label %bb.bo

bb.bo:                                            ; preds = %_ZN4cvc58internal7IntegerD2Ev.exit.i39
  %i.fb = landingpad { ptr, i32 }
          catch ptr null
  %i.fc = extractvalue { ptr, i32 } %i.fb, 0
  call void @__clang_call_terminate(ptr %i.fc) #24
  unreachable

_ZN4cvc58internal16FiniteFieldValueD2Ev.exit40:   ; preds = %_ZN4cvc58internal7IntegerD2Ev.exit.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.fd = load ptr, ptr %5, align 8, !tbaa !46    ; 3 uses
  %i.fe = load i64, ptr %i.fd, align 8            ; 3 uses
  %i.ff = and i64 %i.fe, 1152920405095219200
  %.not.i.i41 = icmp eq i64 %i.ff, 1152920405095219200
  br i1 %.not.i.i41, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, label %bb.bp, !prof !38

bb.bp:                                            ; preds = %_ZN4cvc58internal16FiniteFieldValueD2Ev.exit40
  %i.fg = add i64 %i.fe, 1152920405095219200
  %i.fh = and i64 %i.fg, 1152920405095219200      ; 2 uses
  %i.fi = and i64 %i.fe, -1152920405095219201
  %i.fj = or disjoint i64 %i.fh, %i.fi
  store i64 %i.fj, ptr %i.fd, align 8
  %i.fk = icmp eq i64 %i.fh, 0
  br i1 %i.fk, label %bb.bq, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, !prof !38

bb.bq:                                            ; preds = %bb.bp
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fd)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.fl = landingpad { ptr, i32 }
          catch ptr null
  %i.fm = extractvalue { ptr, i32 } %i.fl, 0
  call void @__clang_call_terminate(ptr %i.fm) #24
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit:              ; preds = %_ZN4cvc58internal16FiniteFieldValueD2Ev.exit40, %bb.bp, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.o, %bb.ad, %bb.bd
  %.pn20.pn = phi { ptr, i32 } [ %.pn, %bb.bd ], [ %.pn18, %bb.ad ], [ %i.u, %bb.o ], [ %lpad.loopexit.split-lp76, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.fn = load ptr, ptr %9, align 8, !tbaa !53    ; 3 uses
  %.not.i.i.i42 = icmp eq ptr %i.fn, null
  br i1 %.not.i.i.i42, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit43, label %bb.bs

bb.bs:                                            ; preds = %.loopexit.split-lp
  %i.fo = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !54
  %i.fq = ptrtoint ptr %i.fp to i64
  %i.fr = ptrtoint ptr %i.fn to i64
  %i.fs = sub i64 %i.fq, %i.fr
  call void @_ZdlPvm(ptr noundef nonnull %i.fn, i64 noundef %i.fs) #23
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit43

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit43: ; preds = %.loopexit.split-lp, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @_ZN4cvc58internal16FiniteFieldValueD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #20
  br label %bb.bt

bb.bt:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit43, %bb.h
  %.pn20.pn.pn = phi { ptr, i32 } [ %.pn20.pn, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit43 ], [ %i.m, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @_ZN4cvc58internal16FiniteFieldValueD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %6) #20
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.g
  %.pn20.pn.pn.pn = phi { ptr, i32 } [ %.pn20.pn.pn, %bb.bt ], [ %i.l, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  resume { ptr, i32 } %.pn20.pn.pn.pn
}

declare void @_ZN4cvc58internalmlERKNS0_16FiniteFieldValueES3_(ptr dead_on_unwind writable sret(%"class.cvc5::internal::FiniteFieldValue") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory2ff26TheoryFiniteFieldsRewriter19postRewriteFfBitsumENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind noalias writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.__mpz_struct, align 8       ; 4 uses
  %4 = alloca %struct.__mpz_struct, align 8       ; 4 uses
  %5 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 8 uses
  %6 = alloca %"class.cvc5::internal::FiniteFieldValue", align 8 ; 10 uses
  %7 = alloca %"class.cvc5::internal::FiniteFieldValue", align 8 ; 8 uses
  %8 = alloca %"class.cvc5::internal::FiniteFieldValue", align 8 ; 10 uses
  %9 = alloca %"class.cvc5::internal::FiniteFieldValue", align 8 ; 12 uses
  %10 = alloca %"class.cvc5::internal::NodeTemplate.78", align 8 ; 7 uses
  %11 = alloca %"class.cvc5::internal::FiniteFieldValue", align 8 ; 8 uses
  %12 = alloca %"class.cvc5::internal::FiniteFieldValue", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @_ZNK4cvc58internal12NodeTemplateILb0EE7getTypeEb(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %2, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.a = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK4cvc58internal8TypeNode9getFfSizeEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4cvc58internal16FiniteFieldValue5mkOneERKNS0_7IntegerE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::FiniteFieldValue") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  invoke void @_ZN4cvc58internalplERKNS0_16FiniteFieldValueES3_(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::FiniteFieldValue") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  invoke void @__gmpz_init_set(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.d
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  invoke void @__gmpz_init_set(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %_ZN4cvc58internal16FiniteFieldValueC2ERKS1_.exit unwind label %bb.e

bb.e:                                             ; preds = %.noexc
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #24
  unreachable

_ZN4cvc58internal16FiniteFieldValueC2ERKS1_.exit: ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.g = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK4cvc58internal8TypeNode9getFfSizeEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %_ZN4cvc58internal16FiniteFieldValueC2ERKS1_.exit
  invoke void @_ZN4cvc58internal16FiniteFieldValue6mkZeroERKNS0_7IntegerE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::FiniteFieldValue") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.h = load ptr, ptr %2, align 8, !tbaa !41     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %i.k = trunc i64 %i.j to i32
  %i.l = and i32 %i.k, 1023                       ; 2 uses
  %i.m = icmp eq i32 %i.l, 1023
  %i.n = select i1 %i.m, i32 -1, i32 %i.l
  %i.o = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.n)
          to label %bb.i unwind label %bb.ag

bb.i:                                             ; preds = %bb.h
  %i.p = icmp eq i32 %i.o, 2
  %spec.select.v.i.i = select i1 %i.p, i64 32, i64 24
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %spec.select.v.i.i ; 2 uses
  %i.q = load ptr, ptr %2, align 8, !tbaa !41     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %13 = load i64, ptr %i.s, align 8
  %14 = lshr i64 %13, 32
  %15 = and i64 %14, 67108863
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %15 ; 2 uses
  %.not55 = icmp eq ptr %spec.select.i.i, %i.t
  br i1 %.not55, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %12, i64 16
  br label %bb.n

bb.j:                                             ; preds = %bb.b, %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.k:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.l:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.g, %_ZN4cvc58internal16FiniteFieldValueC2ERKS1_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.n:                                             ; preds = %.lr.ph, %bb.ad
  %.sroa.052.056 = phi ptr [ %spec.select.i.i, %.lr.ph ], [ %i.bd, %bb.ad ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %i.ab = load ptr, ptr %.sroa.052.056, align 8, !tbaa !43, !noalias !107
  store ptr %i.ab, ptr %10, align 8, !tbaa !41, !alias.scope !107
  %i.ac = invoke noundef zeroext i1 @_ZNK4cvc58internal12NodeTemplateILb0EE7isConstEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  br i1 %i.ac, label %bb.p, label %bb.z

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.ad = load ptr, ptr %10, align 8, !tbaa !41
  %i.ae = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4cvc58internal4expr9NodeValue8getConstINS0_16FiniteFieldValueEEERKT_v(ptr noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_ZNK4cvc58internal12NodeTemplateILb0EE8getConstINS0_16FiniteFieldValueEEERKT_v.exit unwind label %bb.w

_ZNK4cvc58internal12NodeTemplateILb0EE8getConstINS0_16FiniteFieldValueEEERKT_v.exit: ; preds = %bb.p
  invoke void @_ZN4cvc58internalmlERKNS0_16FiniteFieldValueES3_(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::FiniteFieldValue") align 8 %12, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.ae)
          to label %bb.q unwind label %bb.w

bb.q:                                             ; preds = %_ZNK4cvc58internal12NodeTemplateILb0EE8getConstINS0_16FiniteFieldValueEEERKT_v.exit
  invoke void @_ZN4cvc58internalplERKNS0_16FiniteFieldValueES3_(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::FiniteFieldValue") align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.r unwind label %bb.x

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 16, i1 false), !tbaa.struct !57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %11, i64 16, i1 false), !tbaa.struct !57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !57
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false), !tbaa.struct !57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !57
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.v)
          to label %_ZN4cvc58internal7IntegerD2Ev.exit.i unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #24
  unreachable

_ZN4cvc58internal7IntegerD2Ev.exit.i:             ; preds = %bb.r
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %_ZN4cvc58internal16FiniteFieldValueD2Ev.exit unwind label %bb.t

bb.t:                                             ; preds = %_ZN4cvc58internal7IntegerD2Ev.exit.i
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #24
  unreachable

_ZN4cvc58internal16FiniteFieldValueD2Ev.exit:     ; preds = %_ZN4cvc58internal7IntegerD2Ev.exit.i
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.w)
          to label %_ZN4cvc58internal7IntegerD2Ev.exit.i36 unwind label %bb.u

bb.u:                                             ; preds = %_ZN4cvc58internal16FiniteFieldValueD2Ev.exit
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #24
  unreachable

_ZN4cvc58internal7IntegerD2Ev.exit.i36:           ; preds = %_ZN4cvc58internal16FiniteFieldValueD2Ev.exit
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %_ZN4cvc58internal16FiniteFieldValueD2Ev.exit38 unwind label %bb.v

bb.v:                                             ; preds = %_ZN4cvc58internal7IntegerD2Ev.exit.i36
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #24
  unreachable

_ZN4cvc58internal16FiniteFieldValueD2Ev.exit38:   ; preds = %_ZN4cvc58internal7IntegerD2Ev.exit.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %i.an = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4cvc58internal16FiniteFieldValuemLERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZN4cvc58internal16FiniteFieldValueD2Ev.exit38, %bb.n, %bb.ac
  %lpad.loopexit.split-lp60 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.w:                                             ; preds = %bb.p, %_ZNK4cvc58internal12NodeTemplateILb0EE8getConstINS0_16FiniteFieldValueEEERKT_v.exit
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.q
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal16FiniteFieldValueD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %12) #20
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.x ], [ %i.ao, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %.loopexit.split-lp

bb.z:                                             ; preds = %bb.o
  %i.aq = load ptr, ptr %2, align 8, !tbaa !41    ; 5 uses
  store ptr %i.aq, ptr %0, align 8, !tbaa !36
  %i.ar = load i64, ptr %i.aq, align 8            ; 3 uses
  %i.as = lshr i64 %i.ar, 40
  %i.at = trunc nuw nsw i64 %i.as to i32
  %i.au = and i32 %i.at, 1048575                  ; 3 uses
  %i.av = icmp samesign ult i32 %i.au, 1048574
  br i1 %i.av, label %bb.aa, label %bb.ab, !prof !37

bb.aa:                                            ; preds = %bb.z
  %i.aw = add nuw nsw i32 %i.au, 1
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = shl nuw nsw i64 %i.ax, 40
  %i.az = and i64 %i.ar, -1152920405095219201
  %i.ba = or i64 %i.ay, %i.az
  store i64 %i.ba, ptr %i.aq, align 8
  br label %bb.ae

bb.ab:                                            ; preds = %bb.z
  %i.bb = icmp eq i32 %i.au, 1048574
  br i1 %i.bb, label %bb.ac, label %bb.ae, !prof !38

bb.ac:                                            ; preds = %bb.ab
  %i.bc = or i64 %i.ar, 1152920405095219200
  store i64 %i.bc, ptr %i.aq, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %_ZN4cvc58internal16FiniteFieldValueD2Ev.exit38
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.052.056, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bd, %i.t
  br i1 %.not, label %.critedge, label %bb.n

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.y
  %.pn22 = phi { ptr, i32 } [ %.pn, %bb.y ], [ %lpad.loopexit.split-lp60, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.at

bb.ae:                                            ; preds = %bb.ab, %bb.aa, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.ah

.critedge:                                        ; preds = %bb.ad, %bb.i
  %i.be = invoke noundef ptr @_ZNK4cvc58internal6theory14TheoryRewriter11nodeManagerEv(ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %.critedge
  invoke void @_ZN4cvc58internal11NodeManager7mkConstINS0_16FiniteFieldValueEEENS0_12NodeTemplateILb1EEERKT_(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(3592) %i.be, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.ah unwind label %bb.ag

bb.ag:                                            ; preds = %bb.h, %bb.af, %.critedge
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.ah:                                            ; preds = %bb.ae, %bb.af
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 16
  invoke void @__gmpz_clear(ptr noundef nonnull align 8 dereferenceable(16) %i.bg)
          to label %_ZN4cvc58internal7IntegerD2Ev.exit.i40 unwind label %bb.ai
end_hunk_2
begin_hunk_3_@_ZN4cvc58internal8TypeNodeaSERKS1_:bb.a
bb.e:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit
  %i.p = add nuw nsw i32 %i.n, 1
  %i.q = zext nneg i32 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 40
  %i.s = and i64 %i.k, -1152920405095219201
  %i.t = or i64 %i.r, %i.s
  store i64 %i.t, ptr %i.j, align 8
  br label %_ZN4cvc58internal4expr9NodeValue3incEv.exit

bb.f:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit
  %i.u = icmp eq i32 %i.n, 1048574
  br i1 %i.u, label %bb.g, label %_ZN4cvc58internal4expr9NodeValue3incEv.exit, !prof !38

bb.g:                                             ; preds = %bb.f
  %i.v = or i64 %i.k, 1152920405095219200
  store i64 %i.v, ptr %i.j, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.j)
  br label %_ZN4cvc58internal4expr9NodeValue3incEv.exit

_ZN4cvc58internal4expr9NodeValue3incEv.exit:      ; preds = %bb.g, %bb.f, %bb.e, %bb.a
  ret ptr %0
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
declare void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #1 align 2

declare void @_ZN4cvc58internal28TypeCheckingExceptionPrivateC1ENS0_12NodeTemplateILb0EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef align 8, ptr noundef align 8) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4cvc58internal28TypeCheckingExceptionPrivateD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #8

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #11

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #4 align 2

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #12

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #12

declare noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZSt16__do_uninit_copyIN4cvc58internal4expr9NodeValue8iteratorINS1_12NodeTemplateILb0EEEEEPNS5_ILb1EEEET0_T_SB_SA_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not14 = icmp eq ptr %0, %1
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJNS2_ILb0EEEEEvPT_DpOT0_.exit
  %.0816 = phi ptr [ %i.o, %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJNS2_ILb0EEEEEvPT_DpOT0_.exit ], [ %2, %bb.a ] ; 3 uses
  %.sroa.010.015 = phi ptr [ %i.n, %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJNS2_ILb0EEEEEvPT_DpOT0_.exit ], [ %0, %bb.a ] ; 2 uses
  %i.a = load ptr, ptr %.sroa.010.015, align 8, !tbaa !43, !noalias !157 ; 5 uses
  store ptr %i.a, ptr %.0816, align 8, !tbaa !36
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = lshr i64 %i.b, 40
  %i.d = trunc nuw nsw i64 %i.c to i32
  %i.e = and i32 %i.d, 1048575                    ; 3 uses
  %i.f = icmp samesign ult i32 %i.e, 1048574
  br i1 %i.f, label %bb.b, label %bb.c, !prof !37

bb.b:                                             ; preds = %.lr.ph
  %i.g = add nuw nsw i32 %i.e, 1
  %i.h = zext nneg i32 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 40
  %i.j = and i64 %i.b, -1152920405095219201
  %i.k = or i64 %i.i, %i.j
  store i64 %i.k, ptr %i.a, align 8
  br label %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJNS2_ILb0EEEEEvPT_DpOT0_.exit

bb.c:                                             ; preds = %.lr.ph
  %i.l = icmp eq i32 %i.e, 1048574
  br i1 %i.l, label %bb.d, label %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJNS2_ILb0EEEEEvPT_DpOT0_.exit, !prof !38

bb.d:                                             ; preds = %bb.c
  %i.m = or i64 %i.b, 1152920405095219200
  store i64 %i.m, ptr %i.a, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJNS2_ILb0EEEEEvPT_DpOT0_.exit unwind label %bb.e

_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJNS2_ILb0EEEEEvPT_DpOT0_.exit: ; preds = %bb.c, %bb.b, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.010.015, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0816, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.n, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !156

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %.0 = extractvalue { ptr, i32 } %i.p, 0
  %i.q = tail call ptr @__cxa_begin_catch(ptr %.0) #20 ; 0 uses
  invoke void @_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEEEvT_S5_(ptr noundef %2, ptr noundef nonnull %.0816)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #21
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJNS2_ILb0EEEEEvPT_DpOT0_.exit, %bb.a
  %.08.lcssa = phi ptr [ %2, %bb.a ], [ %i.o, %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJNS2_ILb0EEEEEvPT_DpOT0_.exit ]
  ret ptr %.08.lcssa

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.r

bb.i:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #24
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEEEvT_S5_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN4cvc58internal12NodeTemplateILb1EEEEEvT_S7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i
  %.05.i = phi ptr [ %i.k, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i ], [ %0, %bb.a ] ; 2 uses
  %i.a = load ptr, ptr %.05.i, align 8, !tbaa !36 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = and i64 %i.b, 1152920405095219200
  %.not.i.i.i.i = icmp eq i64 %i.c, 1152920405095219200
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i, label %bb.b, !prof !38

bb.b:                                             ; preds = %.lr.ph.i
  %i.d = add i64 %i.b, 1152920405095219200
  %i.e = and i64 %i.d, 1152920405095219200        ; 2 uses
  %i.f = and i64 %i.b, -1152920405095219201
  %i.g = or disjoint i64 %i.e, %i.f
  store i64 %i.g, ptr %i.a, align 8
  %i.h = icmp eq i64 %i.e, 0
  br i1 %i.h, label %bb.c, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i, !prof !38

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #24
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i: ; preds = %bb.c, %bb.b, %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.k, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN4cvc58internal12NodeTemplateILb1EEEEEvT_S7_.exit, label %.lr.ph.i, !llvm.loop !0

_ZNSt12_Destroy_auxILb0EE9__destroyIPN4cvc58internal12NodeTemplateILb1EEEEEvT_S7_.exit: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4cvc58internal4expr9NodeValue8getConstINS0_16FiniteFieldValueEEERKT_v(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4cvc58internal4expr9algorithm10canFlattenIJEEEbNS0_12NodeTemplateILb0EEEDpT_(ptr noundef align 8 %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !41     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = trunc i64 %i.c to i32
  %i.e = and i32 %i.d, 1023                       ; 2 uses
  %i.f = icmp eq i32 %i.e, 1023
  %i.g = select i1 %i.f, i32 -1, i32 %i.e
  %i.h = tail call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.g)
  %i.i = icmp eq i32 %i.h, 2
  %spec.select.v.i.i = select i1 %i.i, i64 32, i64 24
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %spec.select.v.i.i ; 4 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !41     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %1 = load i64, ptr %i.l, align 8                ; 2 uses
  %2 = lshr i64 %1, 32
  %3 = and i64 %2, 67108863
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %3 ; 4 uses
  %i.n = trunc i64 %1 to i32
  %i.o = and i32 %i.n, 1023                       ; 7 uses
  %i.p = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.q = ptrtoint ptr %spec.select.i.i to i64
  %i.r = sub i64 %i.p, %i.q                       ; 3 uses
  %i.s = ashr i64 %i.r, 5                         ; 2 uses
  %i.t = icmp sgt i64 %i.s, 0
  br i1 %i.t, label %.lr.ph.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.a
  %i.u = and i64 %i.r, -32
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %spec.select.i.i, i64 %i.u ; 2 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.lr.ph.preheader.i.i.i.i.i
  %.052.i.i.i.i.i = phi i64 [ %i.ax, %bb.e ], [ %i.s, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.034.051.i.i.i.i.i = phi ptr [ %i.aw, %bb.e ], [ %spec.select.i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 9 uses
  %i.v = load ptr, ptr %.sroa.034.051.i.i.i.i.i, align 8, !tbaa !43, !noalias !173
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i64, ptr %i.w, align 8
  %i.y = trunc i64 %i.x to i32
  %i.z = and i32 %i.y, 1023
  %i.aa = icmp eq i32 %i.z, %i.o
  br i1 %i.aa, label %_ZSt6any_ofIN4cvc58internal4expr9NodeValue8iteratorINS1_12NodeTemplateILb0EEEEEZNS2_9algorithm10canFlattenIJEEEbS6_DpT_EUlS6_E_EbT_SD_T0_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.034.051.i.i.i.i.i, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !43, !noalias !174
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = trunc i64 %i.ae to i32
  %i.ag = and i32 %i.af, 1023
  %i.ah = icmp eq i32 %i.ag, %i.o
  br i1 %i.ah, label %_ZSt6any_ofIN4cvc58internal4expr9NodeValue8iteratorINS1_12NodeTemplateILb0EEEEEZNS2_9algorithm10canFlattenIJEEEbS6_DpT_EUlS6_E_EbT_SD_T0_.exit.loopexit.split.loop.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.034.051.i.i.i.i.i, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !43, !noalias !175
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = trunc i64 %i.al to i32
  %i.an = and i32 %i.am, 1023
  %i.ao = icmp eq i32 %i.an, %i.o
  br i1 %i.ao, label %_ZSt6any_ofIN4cvc58internal4expr9NodeValue8iteratorINS1_12NodeTemplateILb0EEEEEZNS2_9algorithm10canFlattenIJEEEbS6_DpT_EUlS6_E_EbT_SD_T0_.exit.loopexit.split.loop.exit16, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.034.051.i.i.i.i.i, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !43, !noalias !176
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = trunc i64 %i.as to i32
  %i.au = and i32 %i.at, 1023
  %i.av = icmp eq i32 %i.au, %i.o
  br i1 %i.av, label %_ZSt6any_ofIN4cvc58internal4expr9NodeValue8iteratorINS1_12NodeTemplateILb0EEEEEZNS2_9algorithm10canFlattenIJEEEbS6_DpT_EUlS6_E_EbT_SD_T0_.exit.loopexit.split.loop.exit18, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.034.051.i.i.i.i.i, i64 32
  %i.ax = add nsw i64 %.052.i.i.i.i.i, -1
  %i.ay = icmp sgt i64 %.052.i.i.i.i.i, 1
  br i1 %i.ay, label %.lr.ph.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !166

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.e
  %.pre.i.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i.i to i64
  %.pre57.i.i.i.i.i = sub i64 %i.p, %.pre.i.i.i.i.i
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %bb.a
  %.pre-phi58.i.i.i.i.i = phi i64 [ %.pre57.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.r, %bb.a ]
  %.sroa.034.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %spec.select.i.i, %bb.a ] ; 5 uses
  %i.az = ashr exact i64 %.pre-phi58.i.i.i.i.i, 3
  switch i64 %i.az, label %_ZSt6any_ofIN4cvc58internal4expr9NodeValue8iteratorINS1_12NodeTemplateILb0EEEEEZNS2_9algorithm10canFlattenIJEEEbS6_DpT_EUlS6_E_EbT_SD_T0_.exit [
    i64 3, label %bb.f
    i64 2, label %bb.h
    i64 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ba = load ptr, ptr %.sroa.034.0.lcssa.i.i.i.i.i, align 8, !tbaa !43, !noalias !177
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = trunc i64 %i.bc to i32
  %i.be = and i32 %i.bd, 1023
  %i.bf = icmp eq i32 %i.be, %i.o
  br i1 %i.bf, label %_ZSt6any_ofIN4cvc58internal4expr9NodeValue8iteratorINS1_12NodeTemplateILb0EEEEEZNS2_9algorithm10canFlattenIJEEEbS6_DpT_EUlS6_E_EbT_SD_T0_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.034.0.lcssa.i.i.i.i.i, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i.i
  %.sroa.034.1.i.i.i.i.i = phi ptr [ %i.bg, %bb.g ], [ %.sroa.034.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.bh = load ptr, ptr %.sroa.034.1.i.i.i.i.i, align 8, !tbaa !43, !noalias !178
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = and i32 %i.bk, 1023
  %i.bm = icmp eq i32 %i.bl, %i.o
  br i1 %i.bm, label %_ZSt6any_ofIN4cvc58internal4expr9NodeValue8iteratorINS1_12NodeTemplateILb0EEEEEZNS2_9algorithm10canFlattenIJEEEbS6_DpT_EUlS6_E_EbT_SD_T0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.034.1.i.i.i.i.i, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i.i.i
  %.sroa.034.2.i.i.i.i.i = phi ptr [ %i.bn, %bb.i ], [ %.sroa.034.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.bo = load ptr, ptr %.sroa.034.2.i.i.i.i.i, align 8, !tbaa !43, !noalias !179
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = trunc i64 %i.bq to i32
  %i.bs = and i32 %i.br, 1023
  %i.bt = icmp eq i32 %i.bs, %i.o
  %spec.select.i.i.i.i.i = select i1 %i.bt, ptr %.sroa.034.2.i.i.i.i.i, ptr %i.m
  br label %_ZSt6any_ofIN4cvc58internal4expr9NodeValue8iteratorINS1_12NodeTemplateILb0EEEEEZNS2_9algorithm10canFlattenIJEEEbS6_DpT_EUlS6_E_EbT_SD_T0_.exit

_ZSt6any_ofIN4cvc58internal4expr9NodeValue8iteratorINS1_12NodeTemplateILb0EEEEEZNS2_9algorithm10canFlattenIJEEEbS6_DpT_EUlS6_E_EbT_SD_T0_.exit.loopexit.split.loop.exit: ; preds = %bb.b
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.034.051.i.i.i.i.i, i64 8
  br label %_ZSt6any_ofIN4cvc58internal4expr9NodeValue8iteratorINS1_12NodeTemplateILb0EEEEEZNS2_9algorithm10canFlattenIJEEEbS6_DpT_EUlS6_E_EbT_SD_T0_.exit

_ZSt6any_ofIN4cvc58internal4expr9NodeValue8iteratorINS1_12NodeTemplateILb0EEEEEZNS2_9algorithm10canFlattenIJEEEbS6_DpT_EUlS6_E_EbT_SD_T0_.exit.loopexit.split.loop.exit16: ; preds = %bb.c
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.034.051.i.i.i.i.i, i64 16
  br label %_ZSt6any_ofIN4cvc58internal4expr9NodeValue8iteratorINS1_12NodeTemplateILb0EEEEEZNS2_9algorithm10canFlattenIJEEEbS6_DpT_EUlS6_E_EbT_SD_T0_.exit

_ZSt6any_ofIN4cvc58internal4expr9NodeValue8iteratorINS1_12NodeTemplateILb0EEEEEZNS2_9algorithm10canFlattenIJEEEbS6_DpT_EUlS6_E_EbT_SD_T0_.exit.loopexit.split.loop.exit18: ; preds = %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.034.051.i.i.i.i.i, i64 24
  br label %_ZSt6any_ofIN4cvc58internal4expr9NodeValue8iteratorINS1_12NodeTemplateILb0EEEEEZNS2_9algorithm10canFlattenIJEEEbS6_DpT_EUlS6_E_EbT_SD_T0_.exit

_ZSt6any_ofIN4cvc58internal4expr9NodeValue8iteratorINS1_12NodeTemplateILb0EEEEEZNS2_9algorithm10canFlattenIJEEEbS6_DpT_EUlS6_E_EbT_SD_T0_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZSt6any_ofIN4cvc58internal4expr9NodeValue8iteratorINS1_12NodeTemplateILb0EEEEEZNS2_9algorithm10canFlattenIJEEEbS6_DpT_EUlS6_E_EbT_SD_T0_.exit.loopexit.split.loop.exit, %_ZSt6any_ofIN4cvc58internal4expr9NodeValue8iteratorINS1_12NodeTemplateILb0EEEEEZNS2_9algorithm10canFlattenIJEEEbS6_DpT_EUlS6_E_EbT_SD_T0_.exit.loopexit.split.loop.exit16, %_ZSt6any_ofIN4cvc58internal4expr9NodeValue8iteratorINS1_12NodeTemplateILb0EEEEEZNS2_9algorithm10canFlattenIJEEEbS6_DpT_EUlS6_E_EbT_SD_T0_.exit.loopexit.split.loop.exit18, %._crit_edge.i.i.i.i.i, %bb.f, %bb.h, %bb.j
  %.sroa.010.0.in.sroa.speculated.i.i.i.i.i = phi ptr [ %.sroa.034.1.i.i.i.i.i, %bb.h ], [ %spec.select.i.i.i.i.i, %bb.j ], [ %i.m, %._crit_edge.i.i.i.i.i ], [ %.sroa.034.0.lcssa.i.i.i.i.i, %bb.f ], [ %i.bw, %_ZSt6any_ofIN4cvc58internal4expr9NodeValue8iteratorINS1_12NodeTemplateILb0EEEEEZNS2_9algorithm10canFlattenIJEEEbS6_DpT_EUlS6_E_EbT_SD_T0_.exit.loopexit.split.loop.exit18 ], [ %i.bv, %_ZSt6any_ofIN4cvc58internal4expr9NodeValue8iteratorINS1_12NodeTemplateILb0EEEEEZNS2_9algorithm10canFlattenIJEEEbS6_DpT_EUlS6_E_EbT_SD_T0_.exit.loopexit.split.loop.exit16 ], [ %i.bu, %_ZSt6any_ofIN4cvc58internal4expr9NodeValue8iteratorINS1_12NodeTemplateILb0EEEEEZNS2_9algorithm10canFlattenIJEEEbS6_DpT_EUlS6_E_EbT_SD_T0_.exit.loopexit.split.loop.exit ], [ %.sroa.034.051.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.bx = icmp ne ptr %i.m, %.sroa.010.0.in.sroa.speculated.i.i.i.i.i
  ret i1 %i.bx
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE15_M_range_insertISt16reverse_iteratorINS1_4expr9NodeValue8iteratorIS3_EEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EET_SH_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %2, align 8 ; 7 uses
  %.sroa.0.0.copyload.i2.i.i = load ptr, ptr %3, align 8 ; 4 uses
  %.not102 = icmp eq ptr %.sroa.0.0.copyload.i.i.i, %.sroa.0.0.copyload.i2.i.i
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i.i.i to i64 ; 2 uses
  br i1 %.not102, label %_ZSt4copyISt16reverse_iteratorIN4cvc58internal4expr9NodeValue8iteratorINS2_12NodeTemplateILb0EEEEEEN9__gnu_cxx17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEET0_T_SI_SH_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %.sroa.0.0.copyload.i2.i.i to i64 ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 9 uses
  %i.e = ashr exact i64 %i.d, 3                   ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !54
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !59   ; 16 uses
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 5 uses
  %i.l = sub i64 %i.j, %i.k
  %.not = icmp ult i64 %i.l, %i.d
  br i1 %.not, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.n = sub i64 %i.k, %i.m                       ; 4 uses
  %i.o = ashr exact i64 %i.n, 3                   ; 3 uses
  %i.p = icmp ugt i64 %i.o, %i.e
  br i1 %i.p, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt9__advanceISt16reverse_iteratorIN4cvc58internal4expr9NodeValue8iteratorINS2_12NodeTemplateILb0EEEEEElEvRT_T0_St26random_access_iterator_tag.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.c
  %.idx = sub i64 0, %i.d
  %i.q = getelementptr inbounds i8, ptr %i.i, i64 %.idx ; 6 uses
  %i.r = add i64 %i.b, -8
  %i.s = sub i64 %i.r, %i.c                       ; 2 uses
  %i.t = lshr i64 %i.s, 3
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %min.iters.check136 = icmp ult i64 %i.s, 56
  %diff.check138 = icmp ult i64 %i.d, 32
  %or.cond = or i1 %min.iters.check136, %diff.check138
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader195, label %vector.ph139

vector.ph139:                                     ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec140 = and i64 %i.u, 4611686018427387900   ; 3 uses
  %i.v = shl i64 %n.vec140, 3                     ; 2 uses
  %i.w = getelementptr i8, ptr %i.i, i64 %i.v
  %i.x = getelementptr i8, ptr %i.q, i64 %i.v
  br label %vector.body141

vector.body141:                                   ; preds = %vector.body141, %vector.ph139
  %index142 = phi i64 [ 0, %vector.ph139 ], [ %index.next147, %vector.body141 ] ; 2 uses
  %i.y = shl i64 %index142, 3                     ; 2 uses
  %next.gep143 = getelementptr i8, ptr %i.i, i64 %i.y ; 2 uses
  %next.gep144 = getelementptr i8, ptr %i.q, i64 %i.y ; 2 uses
  %i.z = getelementptr i8, ptr %next.gep144, i64 16
  %wide.load145 = load <2 x ptr>, ptr %next.gep144, align 8, !tbaa !41
  %wide.load146 = load <2 x ptr>, ptr %i.z, align 8, !tbaa !41
  %i.aa = getelementptr i8, ptr %next.gep143, i64 16
  store <2 x ptr> %wide.load145, ptr %next.gep143, align 8, !tbaa !41
  store <2 x ptr> %wide.load146, ptr %i.aa, align 8, !tbaa !41
  %index.next147 = add nuw i64 %index142, 4       ; 2 uses
  %i.ab = icmp eq i64 %index.next147, %n.vec140
  br i1 %i.ab, label %middle.block148, label %vector.body141, !llvm.loop !180

middle.block148:                                  ; preds = %vector.body141
  %cmp.n149 = icmp eq i64 %i.u, %n.vec140
  br i1 %cmp.n149, label %_ZSt22__uninitialized_move_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader195

end_hunk_3
