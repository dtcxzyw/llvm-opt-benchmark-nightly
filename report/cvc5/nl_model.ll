Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/nl_model?download=true
inline.NumInlined: 3258
inline.NumDeleted: 942
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZNK4cvc58internal6theory5arith2nl7NlModel18getSubstitutedFormENS0_12NodeTemplateILb0EEE:bb.a
bb.i:                                             ; preds = %bb.h
  %i.ab = or i64 %i.q, 1152920405095219200
  store i64 %i.ab, ptr %i.p, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.p)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit4

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit4: ; preds = %bb.g, %bb.h, %bb.i
  invoke void @_ZNK4cvc58internal6theory5arith9ArithSubs10applyArithERKNS0_12NodeTemplateILb1EEEb(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %4, ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %5, i1 noundef zeroext true)
          to label %bb.j unwind label %bb.r

bb.j:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit4
  %i.ac = load ptr, ptr %4, align 8, !tbaa !36
  store ptr %i.ac, ptr %3, align 8, !tbaa !78
  invoke void @_ZNK4cvc58internal6EnvObj7rewriteENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 %3)
          to label %bb.k unwind label %bb.s

bb.k:                                             ; preds = %bb.j
  %i.ad = load ptr, ptr %4, align 8, !tbaa !36    ; 3 uses
  %i.ae = load i64, ptr %i.ad, align 8            ; 3 uses
  %i.af = and i64 %i.ae, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.af, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.l, !prof !49

bb.l:                                             ; preds = %bb.k
  %i.ag = add i64 %i.ae, 1152920405095219200
  %i.ah = and i64 %i.ag, 1152920405095219200      ; 2 uses
  %i.ai = and i64 %i.ae, -1152920405095219201
  %i.aj = or disjoint i64 %i.ah, %i.ai
  store i64 %i.aj, ptr %i.ad, align 8
  %i.ak = icmp eq i64 %i.ah, 0
  br i1 %i.ak, label %bb.m, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !49

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.k, %bb.l, %bb.m
  %i.an = load ptr, ptr %5, align 8, !tbaa !36    ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8            ; 3 uses
  %i.ap = and i64 %i.ao, 1152920405095219200
  %.not.i.i5 = icmp eq i64 %i.ap, 1152920405095219200
  br i1 %.not.i.i5, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit6, label %bb.o, !prof !49

bb.o:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.aq = add i64 %i.ao, 1152920405095219200
  %i.ar = and i64 %i.aq, 1152920405095219200      ; 2 uses
  %i.as = and i64 %i.ao, -1152920405095219201
  %i.at = or disjoint i64 %i.ar, %i.as
  store i64 %i.at, ptr %i.an, align 8
  %i.au = icmp eq i64 %i.ar, 0
  br i1 %i.au, label %bb.p, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit6, !prof !49

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit6 unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  call void @__clang_call_terminate(ptr %i.aw) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit6:  ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit

bb.r:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit4
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %bb.j
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #24
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn = phi { ptr, i32 } [ %i.ay, %bb.s ], [ %i.ax, %bb.r ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %.pn

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit: ; preds = %bb.e, %bb.d, %bb.c, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit6
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4cvc58internal6theory5arith2nl7NlModel19simpleCheckModelLitENS0_12NodeTemplateILb1EEE(ptr noundef nonnull align 8 dereferenceable(369) %0, ptr noundef nonnull align 8 %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %3 = alloca %"class.cvc5::internal::NodeTemplate.98", align 8 ; 4 uses
  %4 = alloca %"class.cvc5::internal::NodeTemplate.98", align 8 ; 4 uses
  %5 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 14 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate.98", align 8 ; 8 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate.98", align 8 ; 8 uses
  %8 = alloca %"class.cvc5::internal::NodeTemplate.98", align 8 ; 6 uses
  %9 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 9 uses
  %10 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %11 = alloca %"class.cvc5::internal::NodeTemplate.98", align 8 ; 4 uses
  %12 = alloca %"class.cvc5::internal::NodeTemplate.98", align 8 ; 4 uses
  %13 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %14 = alloca %"class.cvc5::internal::NodeTemplate.98", align 8 ; 4 uses
  %15 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %16 = alloca %"class.cvc5::internal::NodeTemplate.98", align 8 ; 4 uses
  %17 = alloca %"class.cvc5::internal::NodeTemplate.98", align 8 ; 4 uses
  %18 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %19 = alloca %"class.cvc5::internal::NodeTemplate.98", align 8 ; 4 uses
  %20 = alloca %"class.cvc5::internal::NodeTemplate.98", align 8 ; 4 uses
  %21 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %22 = alloca %"class.cvc5::internal::NodeTemplate.98", align 8 ; 4 uses
  %23 = alloca %"class.cvc5::internal::NodeTemplate.98", align 8 ; 4 uses
  %24 = alloca %"class.cvc5::internal::NodeTemplate.98", align 8 ; 4 uses
  %25 = alloca %"struct.std::__detail::_AllocNode.221", align 8 ; 4 uses
  %26 = alloca %"class.std::tuple.207", align 8   ; 4 uses
  %27 = alloca %"class.std::tuple.210", align 1   ; 3 uses
  %28 = alloca %"struct.std::__detail::_AllocNode.221", align 8 ; 4 uses
  %29 = alloca %"class.std::tuple.218", align 8   ; 4 uses
  %30 = alloca %"class.std::tuple.210", align 1   ; 3 uses
  %31 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %32 = alloca %"class.cvc5::internal::NodeTemplate.98", align 8 ; 4 uses
  %33 = alloca %"class.cvc5::internal::NodeTemplate.98", align 8 ; 4 uses
  %34 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %35 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 13 uses
  %36 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %37 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %38 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %39 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %40 = alloca %"class.cvc5::internal::NodeTemplate.98", align 8 ; 2 uses
  %41 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %42 = alloca %"class.std::map", align 8         ; 12 uses
  %43 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %44 = alloca %"class.std::vector", align 8      ; 15 uses
  %45 = alloca %"class.std::unordered_set.144", align 8 ; 16 uses
  %46 = alloca %"class.std::map", align 8         ; 11 uses
  %47 = alloca %"class.std::map", align 8         ; 11 uses
  %48 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 20 uses
  %49 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %50 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %51 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %52 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %53 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %54 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 10 uses
  %55 = alloca %"class.cvc5::internal::theory::arith::ArithSubs", align 8 ; 13 uses
  %56 = alloca %"class.cvc5::internal::NodeTemplate.98", align 8 ; 2 uses
  %57 = alloca %"class.cvc5::internal::NodeTemplate.98", align 8 ; 2 uses
  %58 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 6 uses
  %59 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 14 uses
  %60 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %61 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %62 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %63 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %64 = alloca %"class.cvc5::internal::NodeTemplate.98", align 8 ; 2 uses
  %65 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 13 uses
  %66 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 10 uses
  %67 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %68 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %69 = alloca %"class.cvc5::internal::NodeTemplate.98", align 8 ; 2 uses
  %70 = alloca [2 x %"class.cvc5::internal::NodeTemplate"], align 16 ; 17 uses
  %71 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 18 uses
  %72 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 14 uses
  %73 = alloca %"class.cvc5::internal::NodeTemplate.98", align 8 ; 4 uses
  %74 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 12 uses
  %75 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %76 = alloca [2 x %"class.cvc5::internal::NodeTemplate"], align 16 ; 13 uses
  %77 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 12 uses
  %78 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 14 uses
  %79 = alloca %"class.cvc5::internal::NodeTemplate.98", align 8 ; 4 uses
  %80 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 10 uses
  %81 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %82 = alloca %"class.cvc5::internal::NodeTemplate.98", align 8 ; 2 uses
  %83 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %84 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %85 = alloca %"class.cvc5::internal::NodeTemplate.98", align 8 ; 2 uses
  %86 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %i.a = tail call noundef zeroext i1 @_ZNK4cvc58internal12NodeTemplateILb1EE7isConstEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !36
  %i.c = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNK4cvc58internal4expr9NodeValue8getConstIbEERKT_v(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.d = load i8, ptr %i.c, align 1, !tbaa !48, !range !104, !noundef !105
  %i.e = trunc nuw i8 %i.d to i1
  br label %bb.ux

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef ptr @_ZNK4cvc58internal6EnvObj11nodeManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.g = load ptr, ptr %1, align 8, !tbaa !36     ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %87 = and i64 %i.i, 1023
  %i.j = icmp ne i64 %87, 20                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #24
  br i1 %i.j, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225)
  %i.k = tail call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef 20), !noalias !225
  %i.l = icmp eq i32 %i.k, 2
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.n = zext i1 %i.l to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !34, !noalias !225 ; 8 uses
  store ptr %i.p, ptr %34, align 8, !tbaa !36, !alias.scope !225
  %i.q = load i64, ptr %i.p, align 8, !noalias !225 ; 3 uses
  %i.r = lshr i64 %i.q, 40
  %i.s = trunc nuw nsw i64 %i.r to i32
  %i.t = and i32 %i.s, 1048575                    ; 3 uses
  %i.u = icmp samesign ult i32 %i.t, 1048574
  br i1 %i.u, label %bb.e, label %bb.f, !prof !50

bb.e:                                             ; preds = %bb.d
  %i.v = add nuw nsw i32 %i.t, 1
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 40
  %i.y = and i64 %i.q, -1152920405095219201
  %i.z = or i64 %i.x, %i.y
  store i64 %i.z, ptr %i.p, align 8, !noalias !225
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit

bb.f:                                             ; preds = %bb.d
  %i.aa = icmp eq i32 %i.t, 1048574
  br i1 %i.aa, label %bb.g, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit, !prof !49

bb.g:                                             ; preds = %bb.f
  %i.ab = or i64 %i.q, 1152920405095219200
  store i64 %i.ab, ptr %i.p, align 8, !noalias !225
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.p), !noalias !225
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit

bb.h:                                             ; preds = %bb.c
  store ptr %i.g, ptr %34, align 8, !tbaa !36
  %i.ac = load i64, ptr %i.g, align 8             ; 3 uses
  %i.ad = lshr i64 %i.ac, 40
  %i.ae = trunc nuw nsw i64 %i.ad to i32
  %i.af = and i32 %i.ae, 1048575                  ; 3 uses
  %i.ag = icmp samesign ult i32 %i.af, 1048574
  br i1 %i.ag, label %bb.i, label %bb.j, !prof !50

bb.i:                                             ; preds = %bb.h
  %i.ah = add nuw nsw i32 %i.af, 1
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 40
  %i.ak = and i64 %i.ac, -1152920405095219201
  %i.al = or i64 %i.aj, %i.ak
  store i64 %i.al, ptr %i.g, align 8
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit

bb.j:                                             ; preds = %bb.h
  %i.am = icmp eq i32 %i.af, 1048574
  br i1 %i.am, label %bb.k, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit, !prof !49

bb.k:                                             ; preds = %bb.j
  %i.an = or i64 %i.ac, 1152920405095219200
  store i64 %i.an, ptr %i.g, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.g)
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit:  ; preds = %bb.k, %bb.j, %bb.i, %bb.g, %bb.f, %bb.e
  %i.ao = phi ptr [ %i.g, %bb.k ], [ %i.g, %bb.j ], [ %i.g, %bb.i ], [ %i.p, %bb.g ], [ %i.p, %bb.f ], [ %i.p, %bb.e ] ; 8 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = trunc i64 %i.aq to i32
  %i.as = and i32 %i.ar, 1023
  switch i32 %i.as, label %.loopexit [
    i32 5, label %.preheader.preheader
    i32 79, label %bb.bz
  ]

.preheader.preheader:                             ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  br label %.preheader

.preheader:                                       ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit286, %.preheader.preheader
  %.not1093.not = phi i1 [ true, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit286 ], [ false, %.preheader.preheader ]
  %.0931092 = phi i32 [ 1, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit286 ], [ 0, %.preheader.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !226)
  %i.au = load i64, ptr %i.ap, align 8, !noalias !226
  %i.av = trunc i64 %i.au to i32
  %i.aw = and i32 %i.av, 1023                     ; 2 uses
  %i.ax = icmp eq i32 %i.aw, 1023
  %i.ay = select i1 %i.ax, i32 -1, i32 %i.aw
  %i.az = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.ay)
          to label %.noexc unwind label %bb.ap

.noexc:                                           ; preds = %.preheader
  %i.ba = icmp eq i32 %i.az, 2
  %i.bb = zext i1 %i.ba to i32
  %spec.select.i.i = add nuw nsw i32 %.0931092, %i.bb
  %i.bc = zext nneg i32 %spec.select.i.i to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !34, !noalias !226 ; 10 uses
  store ptr %i.be, ptr %36, align 8, !tbaa !36, !alias.scope !226
  %i.bf = load i64, ptr %i.be, align 8, !noalias !226 ; 3 uses
  %i.bg = lshr i64 %i.bf, 40
  %i.bh = trunc nuw nsw i64 %i.bg to i32
  %i.bi = and i32 %i.bh, 1048575                  ; 3 uses
  %i.bj = icmp samesign ult i32 %i.bi, 1048574
  br i1 %i.bj, label %bb.l, label %bb.m, !prof !50

bb.l:                                             ; preds = %.noexc
  %i.bk = add nuw nsw i32 %i.bi, 1
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = shl nuw nsw i64 %i.bl, 40
  %i.bn = and i64 %i.bf, -1152920405095219201
  %i.bo = or i64 %i.bm, %i.bn
  store i64 %i.bo, ptr %i.be, align 8, !noalias !226
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit255

bb.m:                                             ; preds = %.noexc
  %i.bp = icmp eq i32 %i.bi, 1048574
  br i1 %i.bp, label %bb.n, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit255, !prof !49

bb.n:                                             ; preds = %bb.m
  %i.bq = or i64 %i.bf, 1152920405095219200
  store i64 %i.bq, ptr %i.be, align 8, !noalias !226
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit255 unwind label %bb.ap

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit255: ; preds = %bb.m, %bb.l, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !227)
  %i.br = load i64, ptr %i.ap, align 8, !noalias !227
  %i.bs = trunc i64 %i.br to i32
  %i.bt = and i32 %i.bs, 1023                     ; 2 uses
  %i.bu = icmp eq i32 %i.bt, 1023
  %i.bv = select i1 %i.bu, i32 -1, i32 %i.bt
  %i.bw = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.bv)
          to label %.noexc257 unwind label %bb.aq

.noexc257:                                        ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit255
  %i.bx = icmp eq i32 %i.bw, 2
  %i.by = zext i1 %i.bx to i32
  %reass.sub = sub nsw i32 %i.by, %.0931092
  %i.bz = sext i32 %reass.sub to i64
  %i.ca = getelementptr [8 x i8], ptr %i.ao, i64 %i.bz
  %i.cb = getelementptr i8, ptr %i.ca, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !34, !noalias !227 ; 9 uses
  store ptr %i.cc, ptr %37, align 8, !tbaa !36, !alias.scope !227
  %i.cd = load i64, ptr %i.cc, align 8, !noalias !227 ; 3 uses
  %i.ce = lshr i64 %i.cd, 40
  %i.cf = trunc nuw nsw i64 %i.ce to i32
  %i.cg = and i32 %i.cf, 1048575                  ; 3 uses
  %i.ch = icmp samesign ult i32 %i.cg, 1048574
  br i1 %i.ch, label %bb.o, label %bb.p, !prof !50

bb.o:                                             ; preds = %.noexc257
  %i.ci = add nuw nsw i32 %i.cg, 1
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = shl nuw nsw i64 %i.cj, 40
  %i.cl = and i64 %i.cd, -1152920405095219201
  %i.cm = or i64 %i.ck, %i.cl
  store i64 %i.cm, ptr %i.cc, align 8, !noalias !227
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit259

bb.p:                                             ; preds = %.noexc257
  %i.cn = icmp eq i32 %i.cg, 1048574
  br i1 %i.cn, label %bb.q, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit259, !prof !49

bb.q:                                             ; preds = %bb.p
  %i.co = or i64 %i.cd, 1152920405095219200
  store i64 %i.co, ptr %i.cc, align 8, !noalias !227
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cc)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit259 unwind label %bb.aq

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit259: ; preds = %bb.p, %bb.o, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %32)
  call void @llvm.lifetime.start.p0(ptr nonnull %33)
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #24, !noalias !228
  %i.cp = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !85, !noalias !228
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %31, ptr noundef %i.cq, i32 noundef 79)
          to label %.noexc260 unwind label %bb.ar

.noexc260:                                        ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit259
  store ptr %i.be, ptr %32, align 8, !tbaa !78, !noalias !228
  %i.cr = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %31, ptr noundef nonnull align 8 %32)
          to label %bb.r unwind label %bb.u, !noalias !228

bb.r:                                             ; preds = %.noexc260
  store ptr %i.cc, ptr %33, align 8, !tbaa !78, !noalias !228
  %i.cs = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %i.cr, ptr noundef nonnull align 8 %33)
          to label %bb.s unwind label %bb.v, !noalias !228 ; 0 uses

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %35, ptr noundef nonnull align 8 dereferenceable(124) %31)
          to label %bb.x unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.w
end_hunk_0
