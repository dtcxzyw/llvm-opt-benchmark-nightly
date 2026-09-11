Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/entailment_check?download=true
inline.NumInlined: 884
inline.NumDeleted: 287
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK4cvc58internal12NodeTemplateILb1EEixEi:bb.a
  br i1 %i.s, label %bb.b, label %bb.c, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.t = add nuw nsw i32 %i.r, 1
  %i.u = zext nneg i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 40
  %i.w = and i64 %i.o, -1152920405095219201
  %i.x = or i64 %i.v, %i.w
  store i64 %i.x, ptr %i.n, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2EPKNS0_4expr9NodeValueE.exit

bb.c:                                             ; preds = %bb.a
  %i.y = icmp eq i32 %i.r, 1048574
  br i1 %i.y, label %bb.d, label %_ZN4cvc58internal12NodeTemplateILb1EEC2EPKNS0_4expr9NodeValueE.exit, !prof !22

bb.d:                                             ; preds = %bb.c
  %i.z = or i64 %i.o, 1152920405095219200
  store i64 %i.z, ptr %i.n, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.n)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2EPKNS0_4expr9NodeValueE.exit

_ZN4cvc58internal12NodeTemplateILb1EEC2EPKNS0_4expr9NodeValueE.exit: ; preds = %bb.b, %bb.c, %bb.d
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal6theory11TheoryState12getValuationEv(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #1

declare void @_ZN4cvc58internal6theory9Valuation15entailmentCheckENS0_7options12TheoryOfModeENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind writable sret(%"struct.std::pair.490") align 8, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef align 8) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK4cvc58internal12NodeTemplateILb1EE6negateEv(ptr dead_on_unwind noalias writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %3 = alloca %"class.cvc5::internal::NodeTemplate.470", align 8 ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !19     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = and i64 %i.c, 1023
  %.not = icmp eq i64 %i.d, 20
  br i1 %.not, label %bb.b, label %.noexc

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef 20)
  %i.f = icmp eq i32 %i.e, 2
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.h = zext i1 %i.f to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !17   ; 5 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !19
  %i.k = load i64, ptr %i.j, align 8              ; 3 uses
  %i.l = lshr i64 %i.k, 40
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = and i32 %i.m, 1048575                    ; 3 uses
  %i.o = icmp samesign ult i32 %i.n, 1048574
  br i1 %i.o, label %bb.c, label %bb.d, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.p = add nuw nsw i32 %i.n, 1
  %i.q = zext nneg i32 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 40
  %i.s = and i64 %i.k, -1152920405095219201
  %i.t = or i64 %i.r, %i.s
  store i64 %i.t, ptr %i.j, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2EPKNS0_4expr9NodeValueE.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.u = icmp eq i32 %i.n, 1048574
  br i1 %i.u, label %bb.e, label %_ZN4cvc58internal12NodeTemplateILb1EEC2EPKNS0_4expr9NodeValueE.exit.thread, !prof !22

bb.e:                                             ; preds = %bb.d
  %i.v = or i64 %i.k, 1152920405095219200
  store i64 %i.v, ptr %i.j, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.j)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2EPKNS0_4expr9NodeValueE.exit.thread

.noexc:                                           ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20, !noalias !82
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !50, !noalias !82
  call void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef %i.x, i32 noundef 20)
  store ptr %i.a, ptr %3, align 8, !tbaa !31, !noalias !82
  %i.y = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 %3)
          to label %bb.f unwind label %bb.h, !noalias !82 ; 0 uses

bb.f:                                             ; preds = %.noexc
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(124) %2)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.h:                                             ; preds = %.noexc
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.g
  %.pn.i = phi { ptr, i32 } [ %i.z, %bb.g ], [ %i.aa, %bb.h ]
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20, !noalias !82
  resume { ptr, i32 } %.pn.i

bb.i:                                             ; preds = %bb.f
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20, !noalias !82
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2EPKNS0_4expr9NodeValueE.exit.thread

_ZN4cvc58internal12NodeTemplateILb1EEC2EPKNS0_4expr9NodeValueE.exit.thread: ; preds = %bb.c, %bb.d, %bb.e, %bb.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt4pairIbN4cvc58internal12NodeTemplateILb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = and i64 %i.c, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.d, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %i.c, 1152920405095219200
  %i.f = and i64 %i.e, 1152920405095219200        ; 2 uses
  %i.g = and i64 %i.c, -1152920405095219201
  %i.h = or disjoint i64 %i.f, %i.g
  store i64 %i.h, ptr %i.b, align 8
  %i.i = icmp eq i64 %i.f, 0
  br i1 %i.i, label %bb.c, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !22

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #22
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory11quantifiers15EntailmentCheck16getEntailedTerm2ENS0_12NodeTemplateILb0EEERSt3mapIS5_S5_St4lessIS5_ESaISt4pairIKS5_S5_EEEb(ptr dead_on_unwind noalias writable sret(%"class.cvc5::internal::NodeTemplate.470") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, ptr nofree noundef readonly align 8 captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cvc5::internal::NodeTemplate.470", align 8 ; 2 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate.470", align 8 ; 2 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate.470", align 8 ; 4 uses
  %8 = alloca %"class.cvc5::internal::NodeTemplate.470", align 8 ; 2 uses
  %9 = alloca %"class.cvc5::internal::NodeTemplate.470", align 8 ; 6 uses
  %10 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %11 = alloca %"class.cvc5::internal::NodeTemplate.470", align 8 ; 2 uses
  %12 = alloca %"class.std::vector.273", align 8  ; 13 uses
  %13 = alloca %"class.cvc5::internal::NodeTemplate.470", align 8 ; 10 uses
  %14 = alloca %"class.cvc5::internal::NodeTemplate.470", align 8 ; 2 uses
  %15 = alloca %"class.cvc5::internal::NodeTemplate.470", align 8 ; 5 uses
  %16 = alloca %"class.cvc5::internal::NodeTemplate.470", align 8 ; 2 uses
  %17 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37, !nonnull !38, !align !39 ; 2 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !31
  store ptr %i.c, ptr %5, align 8, !tbaa !31
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(160) %i.b, ptr noundef nonnull align 8 %5)
  %i.h = load ptr, ptr %2, align 8, !tbaa !31     ; 4 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.h, ptr %0, align 8, !tbaa !31
  br label %bb.aw

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %i.k = trunc i64 %i.j to i32
  %i.l = and i32 %i.k, 1023                       ; 2 uses
  switch i32 %i.l, label %bb.j [
    i32 7, label %bb.d
    i32 25, label %.preheader.preheader
  ]

.preheader.preheader:                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !95)
  %i.m = call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef 25), !noalias !95
  %i.n = icmp eq i32 %i.m, 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.p = zext i1 %i.n to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !17, !noalias !95
  store ptr %i.r, ptr %7, align 8, !tbaa !31, !alias.scope !95
  %i.s = call noundef zeroext i1 @_ZN4cvc58internal6theory11quantifiers15EntailmentCheck11isEntailed2ENS0_12NodeTemplateILb0EEERSt3mapIS5_S5_St4lessIS5_ESaISt4pairIKS5_S5_EEEbb(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 %7, ptr noundef nonnull align 8 dereferenceable(48) %3, i1 noundef zeroext %4, i1 noundef zeroext true)
  br i1 %i.s, label %bb.i, label %.preheader.1.a

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !29   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not10.i.i.i, label %.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d
  %i.w = load i64, ptr %i.h, align 8
  %i.x = and i64 %i.w, 1099511627775              ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.e ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.e ]
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !31
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = and i64 %i.aa, 1099511627775
  %i.ac = icmp samesign ult i64 %i.ab, %i.x       ; 2 uses
  %.19.i.i.i = select i1 %i.ac, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.ac, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i, label %bb.e, !llvm.loop !0

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i: ; preds = %bb.e
  %i.ad = icmp eq ptr %.19.i.i.i, %i.v
  br i1 %i.ad, label %.thread, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb0EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit

_ZNSt3mapIN4cvc58internal12NodeTemplateILb0EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit: ; preds = %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !31
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = and i64 %i.ag, 1099511627775
  %i.ai = icmp samesign ult i64 %i.x, %i.ah
  br i1 %i.ai, label %.thread, label %bb.f

bb.f:                                             ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb0EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !31 ; 2 uses
  br i1 %4, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr %i.ak, ptr %0, align 8, !tbaa !31
  br label %bb.aw

bb.h:                                             ; preds = %bb.f
  store ptr %i.ak, ptr %6, align 8, !tbaa !31
  call void @_ZN4cvc58internal6theory11quantifiers15EntailmentCheck16getEntailedTerm2ENS0_12NodeTemplateILb0EEERSt3mapIS5_S5_St4lessIS5_ESaISt4pairIKS5_S5_EEEb(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate.470") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %3, i1 noundef zeroext false)
  br label %bb.aw

.preheader.1.a:                                   ; preds = %.preheader.preheader
  call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.al = load ptr, ptr %2, align 8, !tbaa !31, !noalias !96 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i64, ptr %i.am, align 8, !noalias !96
  %i.ao = trunc i64 %i.an to i32
  %i.ap = and i32 %i.ao, 1023                     ; 2 uses
  %i.aq = icmp eq i32 %i.ap, 1023
  %i.ar = select i1 %i.aq, i32 -1, i32 %i.ap
  %i.as = call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.ar), !noalias !96
  %i.at = icmp eq i32 %i.as, 2
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %18 = zext i1 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %18
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !17, !noalias !96
  store ptr %i.aw, ptr %7, align 8, !tbaa !31, !alias.scope !96
  %19 = call noundef zeroext i1 @_ZN4cvc58internal6theory11quantifiers15EntailmentCheck11isEntailed2ENS0_12NodeTemplateILb0EEERSt3mapIS5_S5_St4lessIS5_ESaISt4pairIKS5_S5_EEEbb(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 %7, ptr noundef nonnull align 8 dereferenceable(48) %3, i1 noundef zeroext %4, i1 noundef zeroext false)
  br i1 %19, label %bb.i, label %.thread

bb.i:                                             ; preds = %.preheader.1.a, %.preheader.preheader
  %20 = phi i64 [ 1, %.preheader.preheader ], [ 2, %.preheader.1.a ]
  call void @llvm.experimental.noalias.scope.decl(metadata !97)
  %i.ax = load ptr, ptr %2, align 8, !tbaa !31, !noalias !97 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !noalias !97
  %i.ba = trunc i64 %i.az to i32
  %i.bb = and i32 %i.ba, 1023                     ; 2 uses
  %i.bc = icmp eq i32 %i.bb, 1023
  %i.bd = select i1 %i.bc, i32 -1, i32 %i.bb
  %i.be = call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.bd), !noalias !97
  %i.bf = icmp eq i32 %i.be, 2
  %21 = zext i1 %i.bf to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %22 = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %20
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %22, i64 %21
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !17, !noalias !97
  store ptr %i.bi, ptr %8, align 8, !tbaa !31, !alias.scope !97
  call void @_ZN4cvc58internal6theory11quantifiers15EntailmentCheck16getEntailedTerm2ENS0_12NodeTemplateILb0EEERSt3mapIS5_S5_St4lessIS5_ESaISt4pairIKS5_S5_EEEb(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate.470") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %3, i1 noundef zeroext %4)
  br label %bb.aw

bb.j:                                             ; preds = %bb.c
  %i.bj = call noundef zeroext i1 @_ZN4cvc58internal11NodeManager11hasOperatorENS0_4kind6Kind_tE(i32 noundef %i.l)
  br i1 %i.bj, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !45, !nonnull !38, !align !39
  %i.bm = load ptr, ptr %2, align 8, !tbaa !31
  store ptr %i.bm, ptr %11, align 8, !tbaa !31
  call void @_ZN4cvc58internal6theory11quantifiers6TermDb16getMatchOperatorENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %10, ptr noundef nonnull align 8 dereferenceable(1104) %i.bl, ptr noundef nonnull align 8 %11)
  %i.bn = load ptr, ptr %10, align 8, !tbaa !19   ; 5 uses
  store ptr %i.bn, ptr %9, align 8, !tbaa !31
  %i.bo = load i64, ptr %i.bn, align 8            ; 3 uses
  %i.bp = and i64 %i.bo, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.bp, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.l, !prof !22

bb.l:                                             ; preds = %bb.k
  %i.bq = add i64 %i.bo, 1152920405095219200
  %i.br = and i64 %i.bq, 1152920405095219200      ; 2 uses
  %i.bs = and i64 %i.bo, -1152920405095219201
  %i.bt = or disjoint i64 %i.br, %i.bs
  store i64 %i.bt, ptr %i.bn, align 8
  %i.bu = icmp eq i64 %i.br, 0
  br i1 %i.bu, label %bb.m, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !22

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bn)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  call void @__clang_call_terminate(ptr %i.bw) #22
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.k, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  %i.bx = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.by = icmp eq i8 %i.bx, 0
  br i1 %i.by, label %bb.o, label %bb.s, !prof !15

bb.o:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.bz = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #20
  %.not.i.i68 = icmp eq i32 %i.bz, 0
  br i1 %.not.i.i68, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ca = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #21
          to label %bb.q unwind label %bb.r       ; 3 uses

bb.q:                                             ; preds = %bb.p
  store i64 1152920405095219200, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i8 0, i64 16, i1 false)
  store ptr %i.ca, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !17
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #20
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #20
  br label %.body

bb.s:                                             ; preds = %bb.q, %bb.o, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.cd = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !17
  %i.ce = icmp eq ptr %i.bn, %i.cd
  br i1 %i.ce, label %.thread149, label %bb.t

.thread149:                                       ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %.thread

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %i.cf = load ptr, ptr %2, align 8, !tbaa !31
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = trunc i64 %i.ch to i32
  %i.cj = and i32 %i.ci, 1023                     ; 2 uses
  %i.ck = icmp eq i32 %i.cj, 1023
  %i.cl = select i1 %i.ck, i32 -1, i32 %i.cj
  %i.cm = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.cl)
          to label %_ZNK4cvc58internal12NodeTemplateILb0EE14getNumChildrenEv.exit unwind label %bb.u

_ZNK4cvc58internal12NodeTemplateILb0EE14getNumChildrenEv.exit: ; preds = %bb.t
  %i.cn = icmp eq i32 %i.cm, 2
  %i.co = load i64, ptr %i.cg, align 8
  %i.cp = lshr i64 %i.co, 32
  %i.cq = and i64 %i.cp, 67108863
  %i.cr = sext i1 %i.cn to i64
  %i.cs = add nsw i64 %i.cq, %i.cr
  %i.ct = and i64 %i.cs, 4294967295               ; 2 uses
  %.not154.not = icmp eq i64 %i.ct, 0
  br i1 %.not154.not, label %.thread147, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4cvc58internal12NodeTemplateILb0EE14getNumChildrenEv.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.v:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit
  %.0140155 = phi i64 [ 0, %.lr.ph ], [ %i.fb, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !98)
  %i.cx = load ptr, ptr %2, align 8, !tbaa !31, !noalias !98 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !noalias !98
  %i.da = trunc i64 %i.cz to i32
  %i.db = and i32 %i.da, 1023                     ; 2 uses
  %i.dc = icmp eq i32 %i.db, 1023
  %i.dd = select i1 %i.dc, i32 -1, i32 %i.db
  %i.de = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.dd)
          to label %bb.w unwind label %bb.ad

bb.w:                                             ; preds = %bb.v
  %i.df = icmp eq i32 %i.de, 2
  %i.dg = zext i1 %i.df to i64
  %spec.select.i.i69 = add nuw i64 %.0140155, %i.dg
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %sext = shl i64 %spec.select.i.i69, 32
  %i.di = ashr exact i64 %sext, 29
  %i.dj = getelementptr inbounds i8, ptr %i.dh, i64 %i.di
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !17, !noalias !98
  store ptr %i.dk, ptr %14, align 8, !tbaa !31, !alias.scope !98
  invoke void @_ZN4cvc58internal6theory11quantifiers15EntailmentCheck16getEntailedTerm2ENS0_12NodeTemplateILb0EEERSt3mapIS5_S5_St4lessIS5_ESaISt4pairIKS5_S5_EEEb(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate.470") align 8 %13, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 %14, ptr noundef nonnull align 8 dereferenceable(48) %3, i1 noundef zeroext %4)
          to label %bb.x unwind label %bb.ae

bb.x:                                             ; preds = %bb.w
  %i.dl = load ptr, ptr %13, align 8, !tbaa !31
  %i.dm = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.dn = icmp eq i8 %i.dm, 0
  br i1 %i.dn, label %bb.y, label %bb.ac, !prof !15

bb.y:                                             ; preds = %bb.x
  %i.do = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #20
  %.not.i.i70 = icmp eq i32 %i.do, 0
  br i1 %.not.i.i70, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dp = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #21
          to label %bb.aa unwind label %bb.ab     ; 3 uses

bb.aa:                                            ; preds = %bb.z
  store i64 1152920405095219200, ptr %i.dp, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dq, i8 0, i64 16, i1 false)
  store ptr %i.dp, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !17
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #20
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #20
  br label %.body71

bb.ac:                                            ; preds = %bb.aa, %bb.y, %bb.x
  %i.ds = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !17
  %i.dt = icmp eq ptr %i.dl, %i.ds
  br i1 %i.dt, label %.thread145, label %bb.af

.thread145:                                       ; preds = %bb.ac
  call void @llvm.experimental.noalias.scope.decl(metadata !99)
  %i.du = load ptr, ptr @_ZN4cvc58internal12NodeTemplateILb0EE6s_nullE, align 8, !tbaa !31, !noalias !99
  store ptr %i.du, ptr %0, align 8, !tbaa !31, !alias.scope !99
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %bb.ar

bb.ad:                                            ; preds = %bb.v
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %.body71

bb.ae:                                            ; preds = %bb.w
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %.body71

.loopexit:                                        ; preds = %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body71

.loopexit.split-lp:                               ; preds = %bb.ak
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body71

bb.af:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  %i.dx = load ptr, ptr %i.a, align 8, !tbaa !37, !nonnull !38, !align !39 ; 2 uses
  %i.dy = load ptr, ptr %13, align 8, !tbaa !31
  store ptr %i.dy, ptr %16, align 8, !tbaa !31
  %i.dz = load ptr, ptr %i.dx, align 8, !tbaa !11
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  %i.eb = load ptr, ptr %i.ea, align 8
  invoke void %i.eb(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate.470") align 8 %15, ptr noundef nonnull align 8 dereferenceable(160) %i.dx, ptr noundef nonnull align 8 %16)
          to label %bb.ag unwind label %bb.am

bb.ag:                                            ; preds = %bb.af
  %i.ec = load ptr, ptr %13, align 8, !tbaa !31   ; 2 uses
  %i.ed = load ptr, ptr %15, align 8, !tbaa !31   ; 3 uses
  %.not.i74 = icmp eq ptr %i.ec, %i.ed
  br i1 %.not.i74, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit96, label %bb.ah, !prof !22

bb.ah:                                            ; preds = %bb.ag
  store ptr %i.ed, ptr %13, align 8, !tbaa !31
  br label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit96

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit96: ; preds = %bb.ah, %bb.ag
  %i.ee = phi ptr [ %i.ed, %bb.ah ], [ %i.ec, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  %i.ef = load ptr, ptr %i.cu, align 8, !tbaa !42 ; 6 uses
  %i.eg = load ptr, ptr %i.cv, align 8, !tbaa !43
  %.not.i97 = icmp eq ptr %i.ef, %i.eg
  br i1 %.not.i97, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit96
  store ptr %i.ee, ptr %i.ef, align 8, !tbaa !31
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store ptr %i.eh, ptr %i.cu, align 8, !tbaa !42
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit

bb.aj:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit96
  %i.ei = load ptr, ptr %12, align 8, !tbaa !44   ; 5 uses
  %i.ej = ptrtoint ptr %i.ef to i64
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = sub i64 %i.ej, %i.ek                    ; 4 uses
  %i.em = icmp eq i64 %i.el, 9223372036854775800
  br i1 %i.em, label %bb.ak, label %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #24
          to label %.noexc99 unwind label %.loopexit.split-lp

.noexc99:                                         ; preds = %bb.ak
  unreachable

_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.aj
  %i.en = ashr exact i64 %i.el, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.en, i64 1)
  %i.eo = add nsw i64 %.sroa.speculated.i.i.i, %i.en ; 2 uses
  %i.ep = icmp ult i64 %i.eo, %i.en
  %i.eq = call i64 @llvm.umin.i64(i64 %i.eo, i64 1152921504606846975)
  %i.er = select i1 %i.ep, i64 1152921504606846975, i64 %i.eq ; 3 uses
  %.not.i.i.i98 = icmp ne i64 %i.er, 0
  call void @llvm.assume(i1 %.not.i.i.i98)
  %i.es = shl nuw nsw i64 %i.er, 3
  %i.et = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.es) #21
          to label %.noexc100 unwind label %.loopexit ; 5 uses

.noexc100:                                        ; preds = %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.el
  %i.ev = load ptr, ptr %13, align 8, !tbaa !31
  store ptr %i.ev, ptr %i.eu, align 8, !tbaa !31
  %.not13.i.i.i.i.i.i.i = icmp eq ptr %i.ei, %i.ef
  br i1 %.not13.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc100, %.lr.ph.i.i.i.i.i.i.i
  %.015.i.i.i.i.i.i.i = phi ptr [ %i.ey, %.lr.ph.i.i.i.i.i.i.i ], [ %i.et, %.noexc100 ] ; 2 uses
  %.01214.i.i.i.i.i.i.i = phi ptr [ %i.ex, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ei, %.noexc100 ] ; 2 uses
  %i.ew = load ptr, ptr %.01214.i.i.i.i.i.i.i, align 8, !tbaa !31
  store ptr %i.ew, ptr %.015.i.i.i.i.i.i.i, align 8, !tbaa !31
  %i.ex = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ex, %i.ef
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1

_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc100
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.et, %.noexc100 ], [ %i.ey, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ez = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i35.i.i = icmp eq ptr %i.ei, null
  br i1 %.not.i35.i.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.al

bb.al:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ei, i64 noundef %i.el) #23
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.al, %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i
  store ptr %i.et, ptr %12, align 8, !tbaa !44
  store ptr %i.ez, ptr %i.cu, align 8, !tbaa !42
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.er
  store ptr %i.fa, ptr %i.cv, align 8, !tbaa !43
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  %i.fb = add nuw nsw i64 %.0140155, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.fb, %i.ct
  br i1 %exitcond.not, label %.thread147, label %bb.v, !llvm.loop !92

bb.am:                                            ; preds = %bb.af
  %i.fc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  br label %.body71

.body71:                                          ; preds = %.loopexit, %.loopexit.split-lp, %bb.am, %bb.ab, %bb.ae, %bb.ad
  %.pn.pn = phi { ptr, i32 } [ %i.dv, %bb.ad ], [ %i.dw, %bb.ae ], [ %i.fc, %bb.am ], [ %i.dr, %bb.ab ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %bb.at

.thread147:                                       ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit, %_ZNK4cvc58internal12NodeTemplateILb0EE14getNumChildrenEv.exit
  %i.fd = load ptr, ptr %i.bk, align 8, !tbaa !45, !nonnull !38, !align !39
  invoke void @_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.an unwind label %bb.ap

bb.an:                                            ; preds = %.thread147
  invoke void @_ZN4cvc58internal6theory11quantifiers6TermDb16getCongruentTermENS0_12NodeTemplateILb1EEERKSt6vectorINS4_ILb0EEESaIS7_EE(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate.470") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1104) %i.fd, ptr noundef nonnull align 8 %17, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.ao unwind label %bb.aq

bb.ao:                                            ; preds = %bb.an
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #20
  br label %bb.ar

bb.ap:                                            ; preds = %.thread147
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.aq:                                            ; preds = %bb.an
  %i.ff = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #20
  br label %bb.at

bb.ar:                                            ; preds = %.thread145, %bb.ao
  %i.fg = load ptr, ptr %12, align 8, !tbaa !44   ; 3 uses
  %.not.i.i.i104 = icmp eq ptr %i.fg, null
  br i1 %.not.i.i.i104, label %bb.av, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fh = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !43
  %i.fj = ptrtoint ptr %i.fi to i64
  %i.fk = ptrtoint ptr %i.fg to i64
  %i.fl = sub i64 %i.fj, %i.fk
  call void @_ZdlPvm(ptr noundef nonnull %i.fg, i64 noundef %i.fl) #23
  br label %bb.av

bb.at:                                            ; preds = %bb.u, %.body71, %bb.aq, %bb.ap
  %.pn44 = phi { ptr, i32 } [ %i.cw, %bb.u ], [ %i.ff, %bb.aq ], [ %i.fe, %bb.ap ], [ %.pn.pn, %.body71 ]
  %i.fm = load ptr, ptr %12, align 8, !tbaa !44   ; 3 uses
  %.not.i.i.i105 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i.i105, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit106, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fn = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !43
  %i.fp = ptrtoint ptr %i.fo to i64
  %i.fq = ptrtoint ptr %i.fm to i64
  %i.fr = sub i64 %i.fp, %i.fq
  call void @_ZdlPvm(ptr noundef nonnull %i.fm, i64 noundef %i.fr) #23
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit106

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit106: ; preds = %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %.body

bb.av:                                            ; preds = %bb.as, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.aw

.body:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit106, %bb.r
  %.pn44.pn.pn = phi { ptr, i32 } [ %i.cc, %bb.r ], [ %.pn44, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit106 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  resume { ptr, i32 } %.pn44.pn.pn

.thread:                                          ; preds = %.preheader.1.a, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS5_.exit.i.i, %bb.d, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb0EEES3_St4lessIS3_ESaISt4pairIKS3_S3_EEE4findERS7_.exit, %.thread149, %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %i.fs = load ptr, ptr @_ZN4cvc58internal12NodeTemplateILb0EE6s_nullE, align 8, !tbaa !31, !noalias !100
  store ptr %i.fs, ptr %0, align 8, !tbaa !31, !alias.scope !100
  br label %bb.aw

bb.aw:                                            ; preds = %bb.i, %bb.h, %bb.av, %bb.g, %.thread, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4cvc58internal6theory11quantifiers15EntailmentCheck11isEntailed2ENS0_12NodeTemplateILb0EEERSt3mapIS5_S5_St4lessIS5_ESaISt4pairIKS5_S5_EEEbb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef readonly align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate.470", align 8 ; 5 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate.470", align 8 ; 9 uses
  %8 = alloca %"class.cvc5::internal::NodeTemplate.470", align 8 ; 5 uses
  %9 = alloca %"class.cvc5::internal::NodeTemplate.470", align 8 ; 2 uses
  %10 = alloca %"class.cvc5::internal::NodeTemplate.470", align 8 ; 9 uses
  %11 = alloca %"class.cvc5::internal::NodeTemplate.470", align 8 ; 5 uses
  %12 = alloca %"class.cvc5::internal::NodeTemplate.470", align 8 ; 2 uses
  %13 = alloca %"class.cvc5::internal::NodeTemplate.470", align 8 ; 2 uses
  %14 = alloca %"class.cvc5::internal::NodeTemplate.470", align 8 ; 2 uses
  %15 = alloca %"class.cvc5::internal::NodeTemplate.470", align 8 ; 2 uses
  %16 = alloca %"class.cvc5::internal::NodeTemplate.470", align 8 ; 2 uses
  %17 = alloca %"class.cvc5::internal::NodeTemplate.470", align 8 ; 2 uses
  %18 = alloca %"class.cvc5::internal::NodeTemplate.470", align 8 ; 4 uses
  %19 = alloca %"class.cvc5::internal::NodeTemplate.470", align 8 ; 4 uses
  %20 = alloca %"class.cvc5::internal::NodeTemplate.470", align 8 ; 2 uses
  %21 = alloca %"class.cvc5::internal::NodeTemplate.470", align 8 ; 2 uses
  %22 = alloca %"class.cvc5::internal::NodeTemplate.470", align 8 ; 11 uses
  %23 = alloca %"class.cvc5::internal::NodeTemplate.470", align 8 ; 2 uses
  %24 = alloca %"class.cvc5::internal::NodeTemplate.470", align 8 ; 5 uses
  %25 = alloca %"class.cvc5::internal::NodeTemplate.470", align 8 ; 2 uses
  %i.a = zext i1 %4 to i8
  %i.b = load ptr, ptr %1, align 8, !tbaa !31     ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = trunc i64 %i.d to i32
  %i.f = and i32 %i.e, 1023                       ; 10 uses
  %i.g = icmp eq i32 %i.f, 5                      ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.at

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.h = tail call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef 5), !noalias !127
  %i.i = icmp eq i32 %i.h, 2
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = zext i1 %i.i to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !17, !noalias !127
  store ptr %i.m, ptr %6, align 8, !tbaa !31, !alias.scope !127
  invoke void @_ZNK4cvc58internal12NodeTemplateILb0EE7getTypeEb(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %6, i1 noundef zeroext false)
          to label %bb.c unwind label %bb.af

bb.c:                                             ; preds = %bb.b
  %i.n = invoke noundef zeroext i1 @_ZNK4cvc58internal8TypeNode9isBooleanEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.critedge unwind label %bb.ag

.critedge:                                        ; preds = %bb.c
  %i.o = load ptr, ptr %5, align 8, !tbaa !52     ; 3 uses
  %i.p = load i64, ptr %i.o, align 8              ; 3 uses
  %i.q = and i64 %i.p, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.q, 1152920405095219200
  br i1 %.not.i.i, label %.critedge128, label %bb.d, !prof !22

bb.d:                                             ; preds = %.critedge
  %i.r = add i64 %i.p, 1152920405095219200
  %i.s = and i64 %i.r, 1152920405095219200        ; 2 uses
  %i.t = and i64 %i.p, -1152920405095219201
  %i.u = or disjoint i64 %i.s, %i.t
  store i64 %i.u, ptr %i.o, align 8
  %i.v = icmp eq i64 %i.s, 0
  br i1 %i.v, label %bb.e, label %.critedge128, !prof !22

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.critedge128 unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #22
  unreachable

.critedge128:                                     ; preds = %bb.e, %bb.d, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %.pre208 = load ptr, ptr %1, align 8, !tbaa !31, !noalias !38 ; 4 uses
  br i1 %i.n, label %.critedge128..thread175_crit_edge, label %bb.g

.critedge128..thread175_crit_edge:                ; preds = %.critedge128
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre208, i64 8
  %.pre209 = load i64, ptr %.phi.trans.insert, align 8, !noalias !128
  %.pre210 = trunc i64 %.pre209 to i32
  %.pre211 = and i32 %.pre210, 1023
  br label %.thread175

bb.g:                                             ; preds = %.critedge128
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.y = getelementptr inbounds nuw i8, ptr %.pre208, i64 8
  %i.z = load i64, ptr %i.y, align 8, !noalias !129
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.aa, 1023                     ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 1023
  %i.ad = select i1 %i.ac, i32 -1, i32 %i.ab
  %i.ae = call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.ad), !noalias !129
  %i.af = icmp eq i32 %i.ae, 2
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre208, i64 24
  %i.ah = zext i1 %i.af to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !17, !noalias !129
  store ptr %i.aj, ptr %8, align 8, !tbaa !31, !alias.scope !129
  %i.ak = invoke noundef zeroext i1 @_ZNK4cvc58internal12NodeTemplateILb0EE7isConstEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.h unwind label %bb.ai

bb.h:                                             ; preds = %bb.g
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !130)
  %i.al = load ptr, ptr %1, align 8, !tbaa !31, !noalias !130 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i64, ptr %i.am, align 8, !noalias !130
  %i.ao = trunc i64 %i.an to i32
  %i.ap = and i32 %i.ao, 1023                     ; 2 uses
  %i.aq = icmp eq i32 %i.ap, 1023
  %i.ar = select i1 %i.aq, i32 -1, i32 %i.ap
  %i.as = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.ar)
          to label %.thread166 unwind label %bb.ai

.thread166:                                       ; preds = %bb.i
  %i.at = icmp eq i32 %i.as, 2
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.av = zext i1 %i.at to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !17, !noalias !130 ; 2 uses
  store ptr %i.ax, ptr %7, align 8, !tbaa !31, !alias.scope !130
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !131)
  %i.ay = load ptr, ptr %1, align 8, !tbaa !31, !noalias !131 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !noalias !131
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = and i32 %i.bb, 1023                     ; 2 uses
  %i.bd = icmp eq i32 %i.bc, 1023
  %i.be = select i1 %i.bd, i32 -1, i32 %i.bc
  %i.bf = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.be)
          to label %bb.k unwind label %bb.ai

bb.k:                                             ; preds = %bb.j
  %i.bg = icmp eq i32 %i.bf, 2
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.bi = zext i1 %i.bg to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bi
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !17, !noalias !131
  store ptr %i.bk, ptr %9, align 8, !tbaa !31, !alias.scope !131
  invoke void @_ZN4cvc58internal6theory11quantifiers15EntailmentCheck16getEntailedTerm2ENS0_12NodeTemplateILb0EEERSt3mapIS5_S5_St4lessIS5_ESaISt4pairIKS5_S5_EEEb(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate.470") align 8 %7, ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 %9, ptr noundef nonnull align 8 dereferenceable(48) %2, i1 noundef zeroext %3)
          to label %._crit_edge205 unwind label %bb.aj

._crit_edge205:                                   ; preds = %bb.k
  %.pre = load ptr, ptr %7, align 8, !tbaa !31
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge205, %.thread166
  %i.bl = phi ptr [ %.pre, %._crit_edge205 ], [ %i.ax, %.thread166 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.bm = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %bb.m, label %bb.q, !prof !15

bb.m:                                             ; preds = %bb.l
  %i.bo = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #20
  %.not.i.i137 = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i137, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bp = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #21
          to label %bb.o unwind label %bb.p       ; 3 uses

bb.o:                                             ; preds = %bb.n
  store i64 1152920405095219200, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i8 0, i64 16, i1 false)
  store ptr %i.bp, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !17
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #20
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #20
  br label %.body

bb.q:                                             ; preds = %bb.o, %bb.m, %bb.l
  %i.bs = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !17
  %i.bt = icmp eq ptr %i.bl, %i.bs
  br i1 %i.bt, label %.thread168, label %bb.r

.thread168:                                       ; preds = %bb.q
end_hunk_0
begin_hunk_1_@_ZN4cvc58internal8TypeNodeaSERKS1_:bb.a
  %.not.i = icmp eq i64 %i.d, 1152920405095219200
  br i1 %.not.i, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit, label %bb.c, !prof !22

bb.c:                                             ; preds = %bb.b
  %i.e = add i64 %i.c, 1152920405095219200
  %i.f = and i64 %i.e, 1152920405095219200        ; 2 uses
  %i.g = and i64 %i.c, -1152920405095219201
  %i.h = or disjoint i64 %i.f, %i.g
  store i64 %i.h, ptr %i.a, align 8
  %i.i = icmp eq i64 %i.f, 0
  br i1 %i.i, label %bb.d, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit, !prof !22

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %_ZN4cvc58internal4expr9NodeValue3decEv.exit

_ZN4cvc58internal4expr9NodeValue3decEv.exit:      ; preds = %bb.b, %bb.c, %bb.d
  %i.j = load ptr, ptr %1, align 8, !tbaa !52     ; 5 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !52
  %i.k = load i64, ptr %i.j, align 8              ; 3 uses
  %i.l = lshr i64 %i.k, 40
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = and i32 %i.m, 1048575                    ; 3 uses
  %i.o = icmp samesign ult i32 %i.n, 1048574
  br i1 %i.o, label %bb.e, label %bb.f, !prof !23

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
  br i1 %i.u, label %bb.g, label %_ZN4cvc58internal4expr9NodeValue3incEv.exit, !prof !22

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
declare void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #0 align 2

declare void @_ZN4cvc58internal28TypeCheckingExceptionPrivateC1ENS0_12NodeTemplateILb0EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef align 8, ptr noundef align 8) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN4cvc58internal28TypeCheckingExceptionPrivateD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #13

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #15

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #3 align 2

declare noundef nonnull align 1 dereferenceable(1) ptr @_ZNK4cvc58internal4expr9NodeValue8getConstIbEERKT_v(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold noreturn }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nounwind }
attributes #21 = { builtin allocsize(0) }
attributes #22 = { noreturn nounwind }
attributes #23 = { builtin nounwind }
attributes #24 = { noreturn }
attributes #25 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !33}
!1 = distinct !{!1, !33}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"vtable pointer", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"p1 _ZTSN4cvc58internal6theory11quantifiers16QuantifiersStateE", !12, i64 0}
!14 = !{!"p1 _ZTSN4cvc58internal6theory11quantifiers6TermDbE", !12, i64 0}
!15 = !{!"branch_weights", i32 1, i32 1048575}
!16 = !{!"p1 _ZTSN4cvc58internal4expr9NodeValueE", !12, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"_ZTSN4cvc58internal12NodeTemplateILb1EEE", !16, i64 0}
!19 = !{!18, !16, i64 0}
!20 = !{!"bool", !6, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!23 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!24 = !{!"_ZTSSt14_Rb_tree_color", !6, i64 0}
!25 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !12, i64 0}
!26 = !{!"_ZTSSt18_Rb_tree_node_base", !24, i64 0, !25, i64 8, !25, i64 16, !25, i64 24}
!27 = !{!"long", !6, i64 0}
!28 = !{!"_ZTSSt15_Rb_tree_header", !26, i64 0, !27, i64 32}
!29 = !{!28, !25, i64 8}
!30 = !{!"_ZTSN4cvc58internal12NodeTemplateILb0EEE", !16, i64 0}
!31 = !{!30, !16, i64 0}
!32 = !{!25, !25, i64 0}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!"p1 _ZTSN4cvc58internal3EnvE", !12, i64 0}
!35 = !{!"_ZTSN4cvc58internal6EnvObjE", !34, i64 8}
!36 = !{!"_ZTSN4cvc58internal6theory11quantifiers15EntailmentCheckE", !35, i64 0, !13, i64 16, !14, i64 24, !18, i64 32, !18, i64 40}
!37 = !{!36, !13, i64 16}
!38 = !{}
!39 = !{i64 8}
!40 = !{!"p1 _ZTSN4cvc58internal12NodeTemplateILb0EEE", !12, i64 0}
!41 = !{!"_ZTSNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_Vector_impl_dataE", !40, i64 0, !40, i64 8, !40, i64 16}
!42 = !{!41, !40, i64 8}
!43 = !{!41, !40, i64 16}
!44 = !{!41, !40, i64 0}
!45 = !{!36, !14, i64 24}
!46 = !{!40, !40, i64 0}
!47 = !{i8 0, i8 2}
!48 = !{!"p1 _ZTSN4cvc58internal11NodeManagerE", !12, i64 0}
!49 = !{!"_ZTSN4cvc58internal4expr9NodeValueE", !27, i64 0, !7, i64 5, !7, i64 8, !7, i64 12, !48, i64 16, !6, i64 24}
!50 = !{!49, !48, i64 16}
!51 = !{!"_ZTSN4cvc58internal8TypeNodeE", !16, i64 0}
!52 = !{!51, !16, i64 0}
!53 = !{!28, !24, i64 0}
!54 = !{!28, !25, i64 16}
!55 = !{!28, !25, i64 24}
!56 = !{!28, !27, i64 32}
!57 = !{!26, !25, i64 24}
!58 = !{!26, !25, i64 16}
!59 = !{!"p1 _ZTSSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_NS2_ILb1EEEESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE", !12, i64 0}
!60 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKN4cvc58internal12NodeTemplateILb0EEENS3_ILb1EEEEE", !12, i64 0}
!61 = !{!"_ZTSNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_NS2_ILb1EEEESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE10_Auto_nodeE", !59, i64 0, !60, i64 8}
!62 = !{!61, !60, i64 8}
!63 = !{!13, !13, i64 0}
!64 = !{!14, !14, i64 0}
!65 = !{ptr @_ZN4cvc58internal6theory11quantifiers15EntailmentCheckD2Ev}
!66 = distinct !{!66, !33}
!67 = distinct !{!67, !"_ZNK4cvc58internal12NodeTemplateILb0EEixEi"}
!68 = distinct !{!68, !67, !"_ZNK4cvc58internal12NodeTemplateILb0EEixEi: argument 0"}
!69 = distinct !{!69, !"_ZN4cvc58internal12NodeTemplateILb1EE4nullEv"}
!70 = distinct !{!70, !69, !"_ZN4cvc58internal12NodeTemplateILb1EE4nullEv: argument 0"}
!71 = distinct !{!71, !"_ZNK4cvc58internal12NodeTemplateILb0EEixEi"}
!72 = distinct !{!72, !71, !"_ZNK4cvc58internal12NodeTemplateILb0EEixEi: argument 0"}
!73 = distinct !{!73, !33}
!74 = !{!68}
!75 = !{!70}
!76 = !{!72}
!77 = !{!"_ZTSSt4pairIbN4cvc58internal12NodeTemplateILb1EEEE", !20, i64 0, !18, i64 8}
!78 = !{!77, !20, i64 0}
!79 = distinct !{!79, !33}
!80 = distinct !{!80, !"_ZN4cvc58internal11NodeManager6mkNodeENS0_4kind6Kind_tENS0_12NodeTemplateILb0EEE"}
!81 = distinct !{!81, !80, !"_ZN4cvc58internal11NodeManager6mkNodeENS0_4kind6Kind_tENS0_12NodeTemplateILb0EEE: argument 0"}
!82 = !{!81}
!83 = distinct !{!83, !"_ZNK4cvc58internal12NodeTemplateILb0EEixEi"}
!84 = distinct !{!84, !83, !"_ZNK4cvc58internal12NodeTemplateILb0EEixEi: argument 0"}
!85 = distinct !{!85, !83, !"_ZNK4cvc58internal12NodeTemplateILb0EEixEi: argument 0:It1"}
!86 = distinct !{!86, !"_ZNK4cvc58internal12NodeTemplateILb0EEixEi"}
!87 = distinct !{!87, !86, !"_ZNK4cvc58internal12NodeTemplateILb0EEixEi: argument 0"}
!88 = distinct !{!88, !"_ZNK4cvc58internal12NodeTemplateILb0EEixEi"}
!89 = distinct !{!89, !88, !"_ZNK4cvc58internal12NodeTemplateILb0EEixEi: argument 0"}
!90 = distinct !{!90, !"_ZN4cvc58internal12NodeTemplateILb0EE4nullEv"}
!91 = distinct !{!91, !90, !"_ZN4cvc58internal12NodeTemplateILb0EE4nullEv: argument 0"}
!92 = distinct !{!92, !33}
!93 = distinct !{!93, !"_ZN4cvc58internal12NodeTemplateILb0EE4nullEv"}
!94 = distinct !{!94, !93, !"_ZN4cvc58internal12NodeTemplateILb0EE4nullEv: argument 0"}
!95 = !{!84}
!96 = !{!85}
!97 = !{!87}
!98 = !{!89}
!99 = !{!91}
!100 = !{!94}
!101 = distinct !{!101, !"_ZNK4cvc58internal12NodeTemplateILb0EEixEi"}
!102 = distinct !{!102, !101, !"_ZNK4cvc58internal12NodeTemplateILb0EEixEi: argument 0"}
!103 = distinct !{!103, !"_ZNK4cvc58internal12NodeTemplateILb0EEixEi"}
!104 = distinct !{!104, !103, !"_ZNK4cvc58internal12NodeTemplateILb0EEixEi: argument 0"}
!105 = distinct !{!105, !"_ZNK4cvc58internal12NodeTemplateILb0EEixEi"}
!106 = distinct !{!106, !105, !"_ZNK4cvc58internal12NodeTemplateILb0EEixEi: argument 0"}
!107 = distinct !{!107, !"_ZNK4cvc58internal12NodeTemplateILb0EEixEi"}
!108 = distinct !{!108, !107, !"_ZNK4cvc58internal12NodeTemplateILb0EEixEi: argument 0"}
!109 = distinct !{!109, !"_ZNK4cvc58internal12NodeTemplateILb0EEixEi"}
!110 = distinct !{!110, !109, !"_ZNK4cvc58internal12NodeTemplateILb0EEixEi: argument 0"}
!111 = distinct !{!111, !"_ZNK4cvc58internal12NodeTemplateILb0EEixEi"}
!112 = distinct !{!112, !111, !"_ZNK4cvc58internal12NodeTemplateILb0EEixEi: argument 0"}
!113 = distinct !{!113, !"_ZNK4cvc58internal12NodeTemplateILb0EEixEi"}
!114 = distinct !{!114, !113, !"_ZNK4cvc58internal12NodeTemplateILb0EEixEi: argument 0"}
!115 = distinct !{!115, !"_ZNK4cvc58internal12NodeTemplateILb0EEixEi"}
!116 = distinct !{!116, !115, !"_ZNK4cvc58internal12NodeTemplateILb0EEixEi: argument 0"}
!117 = distinct !{!117, !"_ZNK4cvc58internal12NodeTemplateILb0EEixEi"}
!118 = distinct !{!118, !117, !"_ZNK4cvc58internal12NodeTemplateILb0EEixEi: argument 0"}
!119 = distinct !{!119, !"_ZNK4cvc58internal12NodeTemplateILb0EEixEi"}
!120 = distinct !{!120, !119, !"_ZNK4cvc58internal12NodeTemplateILb0EEixEi: argument 0"}
!121 = distinct !{!121, !33}
!122 = distinct !{!122, !103, !"_ZNK4cvc58internal12NodeTemplateILb0EEixEi: argument 0:It1"}
!123 = distinct !{!123, !"_ZNK4cvc58internal12NodeTemplateILb0EEixEi"}
!124 = distinct !{!124, !123, !"_ZNK4cvc58internal12NodeTemplateILb0EEixEi: argument 0"}
!125 = distinct !{!125, !"_ZNK4cvc58internal12NodeTemplateILb0EEixEi"}
!126 = distinct !{!126, !125, !"_ZNK4cvc58internal12NodeTemplateILb0EEixEi: argument 0"}
!127 = !{!102}
!128 = !{!104}
!129 = !{!106}
!130 = !{!108}
!131 = !{!110}
!132 = !{!112}
!133 = !{!114}
!134 = !{!116}
!135 = !{!118}
!136 = !{!120}
!137 = !{!122}
!138 = !{!124}
!139 = !{!126}
!140 = !{!"p1 omnipotent char", !12, i64 0}
!141 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !140, i64 0}
!142 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !141, i64 0, !27, i64 8, !6, i64 16}
!143 = !{!142, !140, i64 0}
!144 = !{!6, !6, i64 0}
!145 = distinct !{!145, !33}
!146 = distinct !{!146, !33}
!147 = distinct !{!147, !33}
!148 = !{!59, !59, i64 0}
!149 = distinct !{!149, !33}
end_hunk_1
