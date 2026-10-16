Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/inference_manager_buffered?download=true
inline.NumInlined: 364
inline.NumDeleted: 187
begin_hunk_0_@_ZNK4cvc58internal6theory24InferenceManagerBuffered10hasPendingEv:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK4cvc58internal6theory24InferenceManagerBuffered14hasPendingFactEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(337) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !68
  %i.e = icmp ne ptr %i.b, %i.d
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK4cvc58internal6theory24InferenceManagerBuffered15hasPendingLemmaEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(337) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !68
  %i.e = icmp ne ptr %i.b, %i.d
  ret i1 %i.e
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4cvc58internal6theory24InferenceManagerBuffered15addPendingLemmaENS0_12NodeTemplateILb1EEENS1_11InferenceIdENS1_13LemmaPropertyEPNS0_14ProofGeneratorEb(ptr noundef nonnull align 8 dereferenceable(337) %0, ptr nofree noundef readonly align 8 captures(none) %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate.319", align 8 ; 2 uses
  %8 = alloca %"class.cvc5::internal::NodeTemplate.319", align 8 ; 2 uses
  %9 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  br i1 %5, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.a = load ptr, ptr %1, align 8, !tbaa !71
  store ptr %i.a, ptr %7, align 8, !tbaa !73
  invoke void @_ZNK4cvc58internal6EnvObj7rewriteENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 %7)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr %6, align 8, !tbaa !71
  store ptr %i.b, ptr %8, align 8, !tbaa !73
  %i.c = load ptr, ptr %0, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 %8, i32 noundef %3)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %6, align 8, !tbaa !71     ; 3 uses
  %i.h = load i64, ptr %i.g, align 8              ; 3 uses
  %i.i = and i64 %i.h, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.i, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.e, !prof !74

bb.e:                                             ; preds = %bb.d
  %i.j = add i64 %i.h, 1152920405095219200
  %i.k = and i64 %i.j, 1152920405095219200        ; 2 uses
  %i.l = and i64 %i.h, -1152920405095219201
  %i.m = or disjoint i64 %i.k, %i.l
  store i64 %i.m, ptr %i.g, align 8
  %i.n = icmp eq i64 %i.k, 0
  br i1 %i.n, label %bb.f, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !74

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #19
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br i1 %i.f, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit25, label %bb.k

bb.h:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #18
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.r, %bb.i ], [ %i.q, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.y

bb.k:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.t = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #20 ; 4 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !71     ; 5 uses
  store ptr %i.u, ptr %9, align 8, !tbaa !71
  %i.v = load i64, ptr %i.u, align 8              ; 3 uses
  %i.w = lshr i64 %i.v, 40
  %i.x = trunc nuw nsw i64 %i.w to i32
  %i.y = and i32 %i.x, 1048575                    ; 3 uses
  %i.z = icmp samesign ult i32 %i.y, 1048574
  br i1 %i.z, label %bb.l, label %bb.m, !prof !75

bb.l:                                             ; preds = %bb.k
  %i.aa = add nuw nsw i32 %i.y, 1
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 40
  %i.ad = and i64 %i.v, -1152920405095219201
  %i.ae = or i64 %i.ac, %i.ad
  store i64 %i.ae, ptr %i.u, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.m:                                             ; preds = %bb.k
  %i.af = icmp eq i32 %i.y, 1048574
  br i1 %i.af, label %bb.n, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !74

bb.n:                                             ; preds = %bb.m
  %i.ag = or i64 %i.v, 1152920405095219200
  store i64 %i.ag, ptr %i.u, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit unwind label %.thread

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.m, %bb.l, %bb.n
  invoke void @_ZN4cvc58internal6theory17SimpleTheoryLemmaC1ENS1_11InferenceIdENS0_12NodeTemplateILb1EEENS1_13LemmaPropertyEPNS0_14ProofGeneratorE(ptr noundef nonnull align 8 dereferenceable(40) %i.t, i32 noundef %2, ptr noundef nonnull align 8 %9, i32 noundef %3, ptr noundef %4)
          to label %bb.o unwind label %bb.w

bb.o:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !76 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !77
  %.not.i = icmp eq ptr %i.ai, %i.ak
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %i.t, ptr %i.ai, align 8, !tbaa !79
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.al, ptr %i.ah, align 8, !tbaa !76
  br label %_ZNSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE12emplace_backIJPNS3_17SimpleTheoryLemmaEEEERS7_DpOT_.exit

bb.q:                                             ; preds = %bb.o
  %i.am = load ptr, ptr %i.s, align 8, !tbaa !80  ; 7 uses
  %i.an = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.ao = ptrtoint ptr %i.am to i64               ; 3 uses
  %i.ap = sub i64 %i.an, %i.ao                    ; 3 uses
  %i.aq = icmp eq i64 %i.ap, 9223372036854775800
  br i1 %i.aq, label %bb.r, label %_ZNKSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #21
          to label %.noexc22 unwind label %.thread31

.noexc22:                                         ; preds = %bb.r
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.q
  %i.ar = ashr exact i64 %i.ap, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.as = add nsw i64 %.sroa.speculated.i.i.i, %i.ar ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.ar
  %i.au = call i64 @llvm.umin.i64(i64 %i.as, i64 1152921504606846975)
  %i.av = select i1 %i.at, i64 1152921504606846975, i64 %i.au ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.av, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.aw = shl nuw nsw i64 %i.av, 3
  %i.ax = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #20
          to label %.noexc23 unwind label %.thread31 ; 7 uses

.noexc23:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ap
  store ptr %i.t, ptr %i.ay, align 8, !tbaa !79
  %.not10.i.i.i.i.i = icmp eq ptr %i.am, %i.ai
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc23
  %i.az = add i64 %i.an, -8
  %i.ba = sub i64 %i.az, %i.ao                    ; 2 uses
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = add nuw nsw i64 %i.bb, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ba, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader41, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bc, 4611686018427387900     ; 3 uses
  %i.bd = shl i64 %n.vec, 3                       ; 2 uses
  %i.be = getelementptr i8, ptr %i.ax, i64 %i.bd  ; 2 uses
  %i.bf = getelementptr i8, ptr %i.am, i64 %i.bd
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bg = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ax, i64 %i.bg ; 2 uses
  %next.gep38 = getelementptr i8, ptr %i.am, i64 %i.bg ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !114)
  call void @llvm.experimental.noalias.scope.decl(metadata !115)
  %i.bh = getelementptr i8, ptr %next.gep38, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep38, align 8, !tbaa !79, !alias.scope !115
  %wide.load39 = load <2 x i64>, ptr %i.bh, align 8, !tbaa !79, !alias.scope !115
  %i.bi = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !79, !alias.scope !114
  store <2 x i64> %wide.load39, ptr %i.bi, align 8, !tbaa !79, !alias.scope !114
  %i.bj = getelementptr i8, ptr %next.gep38, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep38, align 8, !tbaa !79, !alias.scope !115
  store <2 x ptr> splat (ptr null), ptr %i.bj, align 8, !tbaa !79, !alias.scope !115
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !112

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bc, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader41

.lr.ph.i.i.i.i.i.preheader41:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.preheader ], [ %i.be, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bf, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader41, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader41 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader41 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !114)
  call void @llvm.experimental.noalias.scope.decl(metadata !115)
  %i.bl = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !79, !alias.scope !115
  store i64 %i.bl, ptr %.012.i.i.i.i.i, align 8, !tbaa !79, !alias.scope !114
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !79, !alias.scope !115
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bm, %i.ai
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !113

_ZNSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc23
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ax, %.noexc23 ], [ %i.be, %middle.block ], [ %i.bn, %.lr.ph.i.i.i.i.i ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJPNS3_17SimpleTheoryLemmaEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i
  %i.bp = load ptr, ptr %i.aj, align 8, !tbaa !77
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = sub i64 %i.bq, %i.ao
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.br) #22
  br label %_ZNSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJPNS3_17SimpleTheoryLemmaEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJPNS3_17SimpleTheoryLemmaEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i: ; preds = %bb.s, %_ZNSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i
  store ptr %i.ax, ptr %i.s, align 8, !tbaa !80
  store ptr %i.bo, ptr %i.ah, align 8, !tbaa !76
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.av
  store ptr %i.bs, ptr %i.aj, align 8, !tbaa !77
  br label %_ZNSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE12emplace_backIJPNS3_17SimpleTheoryLemmaEEEERS7_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE12emplace_backIJPNS3_17SimpleTheoryLemmaEEEERS7_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJPNS3_17SimpleTheoryLemmaEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, %bb.p
  %i.bt = load ptr, ptr %9, align 8, !tbaa !71    ; 3 uses
  %i.bu = load i64, ptr %i.bt, align 8            ; 3 uses
  %i.bv = and i64 %i.bu, 1152920405095219200
  %.not.i.i24 = icmp eq i64 %i.bv, 1152920405095219200
  br i1 %.not.i.i24, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit25, label %bb.t, !prof !74

bb.t:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE12emplace_backIJPNS3_17SimpleTheoryLemmaEEEERS7_DpOT_.exit
  %i.bw = add i64 %i.bu, 1152920405095219200
  %i.bx = and i64 %i.bw, 1152920405095219200      ; 2 uses
  %i.by = and i64 %i.bu, -1152920405095219201
  %i.bz = or disjoint i64 %i.bx, %i.by
  store i64 %i.bz, ptr %i.bt, align 8
  %i.ca = icmp eq i64 %i.bx, 0
  br i1 %i.ca, label %bb.u, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit25, !prof !74

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit25 unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  call void @__clang_call_terminate(ptr %i.cc) #19
  unreachable

.thread:                                          ; preds = %bb.n
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.thread31:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i, %bb.r
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #18
  br label %bb.y

bb.w:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #18
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.thread
  %.pn1930 = phi { ptr, i32 } [ %i.cd, %.thread ], [ %lpad.thr_comm.split-lp, %bb.w ]
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef 40) #22
  br label %bb.y

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit25: ; preds = %bb.u, %bb.t, %_ZNSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE12emplace_backIJPNS3_17SimpleTheoryLemmaEEEERS7_DpOT_.exit, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %.117 = phi i1 [ false, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit ], [ true, %_ZNSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE12emplace_backIJPNS3_17SimpleTheoryLemmaEEEERS7_DpOT_.exit ], [ true, %bb.t ], [ true, %bb.u ]
  ret i1 %.117

bb.y:                                             ; preds = %bb.x, %.thread31, %bb.j
  %.pn19.pn = phi { ptr, i32 } [ %.pn, %bb.j ], [ %.pn1930, %bb.x ], [ %lpad.thr_comm, %.thread31 ]
  resume { ptr, i32 } %.pn19.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @_ZNK4cvc58internal6EnvObj7rewriteENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef align 8) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !71     ; 3 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = and i64 %i.b, 1152920405095219200
  %.not.i = icmp eq i64 %i.c, 1152920405095219200
  br i1 %.not.i, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit, label %bb.b, !prof !74

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, 1152920405095219200
  %i.e = and i64 %i.d, 1152920405095219200        ; 2 uses
  %i.f = and i64 %i.b, -1152920405095219201
  %i.g = or disjoint i64 %i.e, %i.f
  store i64 %i.g, ptr %i.a, align 8
  %i.h = icmp eq i64 %i.e, 0
  br i1 %i.h, label %bb.c, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit, !prof !74

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit unwind label %bb.d

_ZN4cvc58internal4expr9NodeValue3decEv.exit:      ; preds = %bb.b, %bb.a, %bb.c
  ret void

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #19
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

declare void @_ZN4cvc58internal6theory17SimpleTheoryLemmaC1ENS1_11InferenceIdENS0_12NodeTemplateILb1EEENS1_13LemmaPropertyEPNS0_14ProofGeneratorE(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef align 8, i32 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory24InferenceManagerBuffered15addPendingLemmaESt10unique_ptrINS1_15TheoryInferenceESt14default_deleteIS4_EE(ptr noundef nonnull align 8 dereferenceable(337) %0, ptr noundef align 8 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !77
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %1, align 8, !tbaa !79
  store i64 %i.e, ptr %i.b, align 8, !tbaa !79
  store ptr null, ptr %1, align 8, !tbaa !79
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.f, ptr %i.a, align 8, !tbaa !76
  br label %_ZNSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS7_EEERS7_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 240
  tail call void @_ZNSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZNSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS7_EEERS7_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS7_EEERS7_DpOT_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory24InferenceManagerBuffered14addPendingFactENS0_12NodeTemplateILb1EEENS1_11InferenceIdES4_PNS0_14ProofGeneratorE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(337) %0, ptr nofree noundef readonly align 8 captures(none) %1, i32 noundef %2, ptr nofree noundef readonly align 8 captures(none) %3, ptr noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #20 ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !71     ; 5 uses
  store ptr %i.c, ptr %5, align 8, !tbaa !71
  %i.d = load i64, ptr %i.c, align 8              ; 3 uses
  %i.e = lshr i64 %i.d, 40
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = and i32 %i.f, 1048575                    ; 3 uses
  %i.h = icmp samesign ult i32 %i.g, 1048574
  br i1 %i.h, label %bb.b, label %bb.c, !prof !75

bb.b:                                             ; preds = %bb.a
  %i.i = add nuw nsw i32 %i.g, 1
  %i.j = zext nneg i32 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 40
  %i.l = and i64 %i.d, -1152920405095219201
  %i.m = or i64 %i.k, %i.l
  store i64 %i.m, ptr %i.c, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.n = icmp eq i32 %i.g, 1048574
  br i1 %i.n, label %bb.d, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !74

bb.d:                                             ; preds = %bb.c
  %i.o = or i64 %i.d, 1152920405095219200
  store i64 %i.o, ptr %i.c, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit unwind label %.thread

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.c, %bb.b, %bb.d
  %i.p = load ptr, ptr %3, align 8, !tbaa !71     ; 5 uses
  store ptr %i.p, ptr %6, align 8, !tbaa !71
  %i.q = load i64, ptr %i.p, align 8              ; 3 uses
  %i.r = lshr i64 %i.q, 40
  %i.s = trunc nuw nsw i64 %i.r to i32
  %i.t = and i32 %i.s, 1048575                    ; 3 uses
  %i.u = icmp samesign ult i32 %i.t, 1048574
  br i1 %i.u, label %bb.e, label %bb.f, !prof !75

bb.e:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.v = add nuw nsw i32 %i.t, 1
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 40
  %i.y = and i64 %i.q, -1152920405095219201
  %i.z = or i64 %i.x, %i.y
  store i64 %i.z, ptr %i.p, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit12

bb.f:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.aa = icmp eq i32 %i.t, 1048574
  br i1 %i.aa, label %bb.g, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit12, !prof !74

bb.g:                                             ; preds = %bb.f
  %i.ab = or i64 %i.q, 1152920405095219200
  store i64 %i.ab, ptr %i.p, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit12 unwind label %.thread22

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit12: ; preds = %bb.f, %bb.e, %bb.g
  invoke void @_ZN4cvc58internal6theory24SimpleTheoryInternalFactC1ENS1_11InferenceIdENS0_12NodeTemplateILb1EEES5_PNS0_14ProofGeneratorE(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i32 noundef %2, ptr noundef nonnull align 8 %5, ptr noundef nonnull align 8 %6, ptr noundef %4)
          to label %bb.h unwind label %bb.s

bb.h:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit12
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !76 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !77
  %.not.i = icmp eq ptr %i.ad, %i.af
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.b, ptr %i.ad, align 8, !tbaa !79
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !76
  br label %_ZNSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE12emplace_backIJPNS3_24SimpleTheoryInternalFactEEEERS7_DpOT_.exit

bb.j:                                             ; preds = %bb.h
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !80  ; 7 uses
  %i.ai = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.aj = ptrtoint ptr %i.ah to i64               ; 3 uses
  %i.ak = sub i64 %i.ai, %i.aj                    ; 3 uses
  %i.al = icmp eq i64 %i.ak, 9223372036854775800
  br i1 %i.al, label %bb.k, label %_ZNKSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #21
          to label %.noexc13 unwind label %bb.s

.noexc13:                                         ; preds = %bb.k
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.am = ashr exact i64 %i.ak, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.am, i64 1)
  %i.an = add nsw i64 %.sroa.speculated.i.i.i, %i.am ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.am
  %i.ap = call i64 @llvm.umin.i64(i64 %i.an, i64 1152921504606846975)
  %i.aq = select i1 %i.ao, i64 1152921504606846975, i64 %i.ap ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.aq, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ar = shl nuw nsw i64 %i.aq, 3
  %i.as = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #20
          to label %.noexc14 unwind label %bb.s   ; 7 uses

.noexc14:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ak
  store ptr %i.b, ptr %i.at, align 8, !tbaa !79
  %.not10.i.i.i.i.i = icmp eq ptr %i.ah, %i.ad
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc14
  %i.au = add i64 %i.ai, -8
  %i.av = sub i64 %i.au, %i.aj                    ; 2 uses
  %i.aw = lshr i64 %i.av, 3
  %i.ax = add nuw nsw i64 %i.aw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.av, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader35, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ax, 4611686018427387900     ; 3 uses
  %i.ay = shl i64 %n.vec, 3                       ; 2 uses
  %i.az = getelementptr i8, ptr %i.as, i64 %i.ay  ; 2 uses
  %i.ba = getelementptr i8, ptr %i.ah, i64 %i.ay
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bb = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.as, i64 %i.bb ; 2 uses
  %next.gep32 = getelementptr i8, ptr %i.ah, i64 %i.bb ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !121)
  call void @llvm.experimental.noalias.scope.decl(metadata !122)
  %i.bc = getelementptr i8, ptr %next.gep32, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep32, align 8, !tbaa !79, !alias.scope !122
  %wide.load33 = load <2 x i64>, ptr %i.bc, align 8, !tbaa !79, !alias.scope !122
  %i.bd = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !79, !alias.scope !121
  store <2 x i64> %wide.load33, ptr %i.bd, align 8, !tbaa !79, !alias.scope !121
  %i.be = getelementptr i8, ptr %next.gep32, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep32, align 8, !tbaa !79, !alias.scope !122
  store <2 x ptr> splat (ptr null), ptr %i.be, align 8, !tbaa !79, !alias.scope !122
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !119

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ax, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader35

.lr.ph.i.i.i.i.i.preheader35:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i.preheader ], [ %i.az, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ba, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader35, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader35 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader35 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !121)
  call void @llvm.experimental.noalias.scope.decl(metadata !122)
  %i.bg = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !79, !alias.scope !122
  store i64 %i.bg, ptr %.012.i.i.i.i.i, align 8, !tbaa !79, !alias.scope !121
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !79, !alias.scope !122
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bh, %i.ad
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !120

_ZNSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc14
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.as, %.noexc14 ], [ %i.az, %middle.block ], [ %i.bi, %.lr.ph.i.i.i.i.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJPNS3_24SimpleTheoryInternalFactEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i
  %i.bk = load ptr, ptr %i.ae, align 8, !tbaa !77
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = sub i64 %i.bl, %i.aj
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.bm) #22
  br label %_ZNSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJPNS3_24SimpleTheoryInternalFactEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJPNS3_24SimpleTheoryInternalFactEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i
  store ptr %i.as, ptr %i.a, align 8, !tbaa !80
  store ptr %i.bj, ptr %i.ac, align 8, !tbaa !76
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.aq
  store ptr %i.bn, ptr %i.ae, align 8, !tbaa !77
  br label %_ZNSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE12emplace_backIJPNS3_24SimpleTheoryInternalFactEEEERS7_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE12emplace_backIJPNS3_24SimpleTheoryInternalFactEEEERS7_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJPNS3_24SimpleTheoryInternalFactEEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, %bb.i
  %i.bo = load ptr, ptr %6, align 8, !tbaa !71    ; 3 uses
  %i.bp = load i64, ptr %i.bo, align 8            ; 3 uses
  %i.bq = and i64 %i.bp, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.bq, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.m, !prof !74

bb.m:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE12emplace_backIJPNS3_24SimpleTheoryInternalFactEEEERS7_DpOT_.exit
  %i.br = add i64 %i.bp, 1152920405095219200
  %i.bs = and i64 %i.br, 1152920405095219200      ; 2 uses
  %i.bt = and i64 %i.bp, -1152920405095219201
  %i.bu = or disjoint i64 %i.bs, %i.bt
  store i64 %i.bu, ptr %i.bo, align 8
  %i.bv = icmp eq i64 %i.bs, 0
  br i1 %i.bv, label %bb.n, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !74

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  call void @__clang_call_terminate(ptr %i.bx) #19
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %_ZNSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE12emplace_backIJPNS3_24SimpleTheoryInternalFactEEEERS7_DpOT_.exit, %bb.m, %bb.n
  %i.by = load ptr, ptr %5, align 8, !tbaa !71    ; 3 uses
  %i.bz = load i64, ptr %i.by, align 8            ; 3 uses
  %i.ca = and i64 %i.bz, 1152920405095219200
  %.not.i.i15 = icmp eq i64 %i.ca, 1152920405095219200
  br i1 %.not.i.i15, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit16, label %bb.p, !prof !74

bb.p:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.cb = add i64 %i.bz, 1152920405095219200
  %i.cc = and i64 %i.cb, 1152920405095219200      ; 2 uses
  %i.cd = and i64 %i.bz, -1152920405095219201
  %i.ce = or disjoint i64 %i.cc, %i.cd
  store i64 %i.ce, ptr %i.by, align 8
  %i.cf = icmp eq i64 %i.cc, 0
  br i1 %i.cf, label %bb.q, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit16, !prof !74

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit16 unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  call void @__clang_call_terminate(ptr %i.ch) #19
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit16: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, %bb.p, %bb.q
  ret void

.thread:                                          ; preds = %bb.d
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.thread22:                                        ; preds = %bb.g
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #18
  br label %bb.t

bb.s:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit12, %bb.k, %_ZNKSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i
  %.0 = phi i1 [ false, %_ZNKSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i ], [ true, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit12 ], [ false, %bb.k ]
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #18
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #18
  br i1 %.0, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.thread22, %.thread, %bb.s
  %.pn.pn21 = phi { ptr, i32 } [ %i.ci, %.thread ], [ %i.ck, %bb.s ], [ %i.cj, %.thread22 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 40) #22
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn.pn20 = phi { ptr, i32 } [ %.pn.pn21, %bb.t ], [ %i.ck, %bb.s ]
  resume { ptr, i32 } %.pn.pn20
}

declare void @_ZN4cvc58internal6theory24SimpleTheoryInternalFactC1ENS1_11InferenceIdENS0_12NodeTemplateILb1EEES5_PNS0_14ProofGeneratorE(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef align 8, ptr noundef align 8, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory24InferenceManagerBuffered14addPendingFactESt10unique_ptrINS1_15TheoryInferenceESt14default_deleteIS4_EE(ptr noundef nonnull align 8 dereferenceable(337) %0, ptr noundef align 8 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !77
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %1, align 8, !tbaa !79
  store i64 %i.e, ptr %i.b, align 8, !tbaa !79
  store ptr null, ptr %1, align 8, !tbaa !79
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.f, ptr %i.a, align 8, !tbaa !76
  br label %_ZNSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS7_EEERS7_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @_ZNSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZNSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS7_EEERS7_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE12emplace_backIJS7_EEERS7_DpOT_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory24InferenceManagerBuffered26addPendingPhaseRequirementENS0_12NodeTemplateILb1EEEb(ptr noundef nonnull align 8 dereferenceable(337) %0, ptr noundef align 8 %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::tuple.334", align 8    ; 4 uses
  %4 = alloca %"class.std::tuple.337", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !71
  %i.f = load i64, ptr %i.e, align 8
  %i.g = and i64 %i.f, 1099511627775              ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !71
  %i.j = load i64, ptr %i.i, align 8
  %i.k = and i64 %i.j, 1099511627775
  %i.l = icmp samesign ult i64 %i.k, %i.g         ; 2 uses
  %.19.i.i.i.i = select i1 %i.l, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.l, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE11lower_boundERS7_.exit.i, label %bb.b, !llvm.loop !123

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE11lower_boundERS7_.exit.i: ; preds = %bb.b
  %i.m = icmp eq ptr %.19.i.i.i.i, %i.d
  br i1 %i.m, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE11lower_boundERS7_.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !71
  %i.p = load i64, ptr %i.o, align 8
  %i.q = and i64 %i.p, 1099511627775
  %i.r = icmp samesign ult i64 %i.g, %i.q
  br i1 %i.r, label %.critedge.i, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEEixERS7_.exit

.critedge.i:                                      ; preds = %bb.c, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE11lower_boundERS7_.exit.i, %bb.a
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.c ], [ %.19.i.i.i.i, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE11lower_boundERS7_.exit.i ], [ %i.d, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store ptr %1, ptr %3, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.s = call ptr @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEEixERS7_.exit

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEEixERS7_.exit: ; preds = %bb.c, %.critedge.i
  %.sroa.06.0.i = phi ptr [ %i.s, %.critedge.i ], [ %.19.i.i.i.i, %bb.c ]
  %i.t = zext i1 %2 to i8
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  store i8 %i.t, ptr %i.u, align 1, !tbaa !124
end_hunk_0
begin_hunk_1_@__cxx_global_var_init:bb.a
  br i1 %.not.i, label %_ZN4cvc58internal4expr9NodeValue4nullEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #20
          to label %bb.e unwind label %bb.f       ; 3 uses

bb.e:                                             ; preds = %bb.d
  store i64 1152920405095219200, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store ptr %i.f, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !90
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #18
  br label %_ZN4cvc58internal4expr9NodeValue4nullEv.exit

bb.f:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #18
  resume { ptr, i32 } %i.h

_ZN4cvc58internal4expr9NodeValue4nullEv.exit:     ; preds = %bb.b, %bb.c, %bb.e
  %i.i = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !90 ; 5 uses
  store ptr %i.i, ptr @_ZN4cvc58internal12NodeTemplateILb1EE6s_nullE, align 8, !tbaa !71
  %i.j = load i64, ptr %i.i, align 8              ; 3 uses
  %i.k = lshr i64 %i.j, 40
  %i.l = trunc nuw nsw i64 %i.k to i32
  %i.m = and i32 %i.l, 1048575                    ; 3 uses
  %i.n = icmp samesign ult i32 %i.m, 1048574
  br i1 %i.n, label %bb.g, label %bb.h, !prof !75

bb.g:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue4nullEv.exit
  %i.o = add nuw nsw i32 %i.m, 1
  %i.p = zext nneg i32 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 40
  %i.r = and i64 %i.j, -1152920405095219201
  %i.s = or i64 %i.q, %i.r
  store i64 %i.s, ptr %i.i, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2EPKNS0_4expr9NodeValueE.exit

bb.h:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue4nullEv.exit
  %i.t = icmp eq i32 %i.m, 1048574
  br i1 %i.t, label %bb.i, label %_ZN4cvc58internal12NodeTemplateILb1EEC2EPKNS0_4expr9NodeValueE.exit, !prof !74

bb.i:                                             ; preds = %bb.h
  %i.u = or i64 %i.j, 1152920405095219200
  store i64 %i.u, ptr %i.i, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.i)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2EPKNS0_4expr9NodeValueE.exit

_ZN4cvc58internal12NodeTemplateILb1EEC2EPKNS0_4expr9NodeValueE.exit: ; preds = %bb.g, %bb.h, %bb.i
  %i.v = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4cvc58internal12NodeTemplateILb1EED2Ev, ptr nonnull @_ZN4cvc58internal12NodeTemplateILb1EE6s_nullE, ptr nonnull @__dso_handle) #18 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2EPKNS0_4expr9NodeValueE.exit, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #8

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #18 ; 0 uses
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZN4cvc58internal6theory22TheoryInferenceManagerD2Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240)) unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit ], [ %1, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !103
  tail call void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !137  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71   ; 3 uses
  %i.g = load i64, ptr %i.f, align 8              ; 3 uses
  %i.h = and i64 %i.g, 1152920405095219200
  %.not.i.i.i.i.i = icmp eq i64 %i.h, 1152920405095219200
  br i1 %.not.i.i.i.i.i, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit, label %bb.b, !prof !74

bb.b:                                             ; preds = %.lr.ph
  %i.i = add i64 %i.g, 1152920405095219200
  %i.j = and i64 %i.i, 1152920405095219200        ; 2 uses
  %i.k = and i64 %i.g, -1152920405095219201
  %i.l = or disjoint i64 %i.j, %i.k
  store i64 %i.l, ptr %i.f, align 8
  %i.m = icmp eq i64 %i.j, 0
  br i1 %i.m, label %bb.c, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit, !prof !74

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #19
  unreachable

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit: ; preds = %.lr.ph, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #22
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !136

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit, %bb.a
  ret void
}

declare void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #8

declare void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !80     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #21
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #20 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load i64, ptr %2, align 8, !tbaa !79
  store i64 %i.r, ptr %i.q, align 8, !tbaa !79
  store ptr null, ptr %2, align 8, !tbaa !79
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit
  %i.s = add i64 %i.m, -8
  %i.t = sub i64 %i.s, %i.e                       ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader55, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.w = shl i64 %n.vec, 3                        ; 2 uses
  %i.x = getelementptr i8, ptr %i.p, i64 %i.w     ; 2 uses
  %i.y = getelementptr i8, ptr %i.c, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.z ; 2 uses
  %next.gep35 = getelementptr i8, ptr %i.c, i64 %i.z ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  %i.aa = getelementptr i8, ptr %next.gep35, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep35, align 8, !tbaa !79, !alias.scope !152
  %wide.load36 = load <2 x i64>, ptr %i.aa, align 8, !tbaa !79, !alias.scope !152
  %i.ab = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !79, !alias.scope !151
  store <2 x i64> %wide.load36, ptr %i.ab, align 8, !tbaa !79, !alias.scope !151
  %i.ac = getelementptr i8, ptr %next.gep35, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep35, align 8, !tbaa !79, !alias.scope !152
  store <2 x ptr> splat (ptr null), ptr %i.ac, align 8, !tbaa !79, !alias.scope !152
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !141

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i.preheader55

.lr.ph.i.i.i.preheader55:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.x, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.y, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader55, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader55 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader55 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  %i.ae = load i64, ptr %.0911.i.i.i, align 8, !tbaa !79, !alias.scope !152
  store i64 %i.ae, ptr %.012.i.i.i, align 8, !tbaa !79, !alias.scope !151
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !79, !alias.scope !152
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.af, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i, !llvm.loop !142

_ZNSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit ], [ %i.x, %middle.block ], [ %i.ag, %.lr.ph.i.i.i ] ; 2 uses
  %i.ah = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit
  %i.ai = add i64 %i.d, -8
  %i.aj = sub i64 %i.ai, %i.m                     ; 3 uses
  %i.ak = lshr i64 %i.aj, 3
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check40 = icmp ult i64 %i.aj, 152
  br i1 %min.iters.check40, label %.lr.ph.i.i.i17.preheader54, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i17.preheader
  %i.am = and i64 %i.aj, -8                       ; 2 uses
  %i.an = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.an, i64 16
  %i.ap = getelementptr i8, ptr %1, i64 %i.am
  %i.aq = getelementptr i8, ptr %i.ap, i64 8
  %bound0 = icmp ult ptr %i.ah, %i.aq
  %bound1 = icmp ult ptr %1, %i.ao
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i17.preheader54, label %vector.ph41

vector.ph41:                                      ; preds = %vector.memcheck
  %n.vec42 = and i64 %i.al, 4611686018427387900   ; 3 uses
  %i.ar = shl i64 %n.vec42, 3                     ; 2 uses
  %i.as = getelementptr i8, ptr %i.ah, i64 %i.ar  ; 2 uses
  %i.at = getelementptr i8, ptr %1, i64 %i.ar
  br label %vector.body43

vector.body43:                                    ; preds = %vector.body43, %vector.ph41
  %index44 = phi i64 [ 0, %vector.ph41 ], [ %index.next49, %vector.body43 ] ; 2 uses
  %i.au = shl i64 %index44, 3                     ; 2 uses
  %next.gep45 = getelementptr i8, ptr %i.ah, i64 %i.au ; 2 uses
  %next.gep46 = getelementptr i8, ptr %1, i64 %i.au ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  %i.av = getelementptr i8, ptr %next.gep46, i64 16
  %wide.load47 = load <2 x i64>, ptr %next.gep46, align 8, !tbaa !79, !alias.scope !155
  %wide.load48 = load <2 x i64>, ptr %i.av, align 8, !tbaa !79, !alias.scope !155
  %i.aw = getelementptr i8, ptr %next.gep45, i64 16
  store <2 x i64> %wide.load47, ptr %next.gep45, align 8, !tbaa !79, !alias.scope !156, !noalias !157
  store <2 x i64> %wide.load48, ptr %i.aw, align 8, !tbaa !79, !alias.scope !156, !noalias !157
  %i.ax = getelementptr i8, ptr %next.gep46, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep46, align 8, !tbaa !79, !alias.scope !155
  store <2 x ptr> splat (ptr null), ptr %i.ax, align 8, !tbaa !79, !alias.scope !155
  %index.next49 = add nuw i64 %index44, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next49, %n.vec42
  br i1 %i.ay, label %middle.block50, label %vector.body43, !llvm.loop !149

middle.block50:                                   ; preds = %vector.body43
  %cmp.n51 = icmp eq i64 %i.al, %n.vec42
  br i1 %cmp.n51, label %_ZNSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22, label %.lr.ph.i.i.i17.preheader54

.lr.ph.i.i.i17.preheader54:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i17.preheader, %middle.block50
  %.012.i.i.i18.ph = phi ptr [ %i.ah, %vector.memcheck ], [ %i.ah, %.lr.ph.i.i.i17.preheader ], [ %i.as, %middle.block50 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.at, %middle.block50 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader54, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.bb, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader54 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ba, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader54 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  %i.az = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !79, !alias.scope !154
  store i64 %i.az, ptr %.012.i.i.i18, align 8, !tbaa !79, !alias.scope !153
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !79, !alias.scope !154
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ba, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !150

_ZNSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block50, %_ZNSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ah, %_ZNSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ], [ %i.as, %middle.block50 ], [ %i.bb, %.lr.ph.i.i.i17 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE13_M_deallocateEPS7_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !77
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bf) #22
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE13_M_deallocateEPS7_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE13_M_deallocateEPS7_m.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !80
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !76
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bg, ptr %i.bc, align 8, !tbaa !77
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::_Rb_tree<cvc5::internal::NodeTemplate<true>, std::pair<const cvc5::internal::NodeTemplate<true>, bool>, std::_Select1st<std::pair<const cvc5::internal::NodeTemplate<true>, bool>>, std::less<cvc5::internal::NodeTemplate<true>>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store ptr %0, ptr %5, align 8, !tbaa !158
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #20 ; 6 uses
  tail call void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESH_IJEEEEEvPSt13_Rb_tree_nodeIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.b, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  store ptr %i.b, ptr %i.a, align 8, !tbaa !107
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.d = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.e = extractvalue { ptr, ptr } %i.d, 0        ; 2 uses
  %i.f = extractvalue { ptr, ptr } %i.d, 1        ; 4 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ne ptr %i.e, null
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.h
  br i1 %or.cond.i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !71
  %i.k = load i64, ptr %i.j, align 8
  %i.l = and i64 %i.k, 1099511627775
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !71
  %i.n = load i64, ptr %i.m, align 8
  %i.o = and i64 %i.n, 1099511627775
  %i.p = icmp samesign ult i64 %i.l, %i.o
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.q = phi i1 [ %i.p, %bb.d ], [ true, %bb.c ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.q, ptr noundef nonnull %i.b, ptr noundef nonnull %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.g) #18
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !22
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr %i.r, align 8, !tbaa !22
  br label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE10_Auto_nodeD2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  resume { ptr, i32 } %i.u

bb.f:                                             ; preds = %bb.b
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !71   ; 3 uses
  %i.w = load i64, ptr %i.v, align 8              ; 3 uses
  %i.x = and i64 %i.w, 1152920405095219200
  %.not.i.i.i.i.i.i = icmp eq i64 %i.x, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i, label %bb.g, !prof !74

bb.g:                                             ; preds = %bb.f
  %i.y = add i64 %i.w, 1152920405095219200
  %i.z = and i64 %i.y, 1152920405095219200        ; 2 uses
  %i.aa = and i64 %i.w, -1152920405095219201
  %i.ab = or disjoint i64 %i.z, %i.aa
  store i64 %i.ab, ptr %i.v, align 8
  %i.ac = icmp eq i64 %i.z, 0
  br i1 %i.ac, label %bb.h, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i, !prof !74

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  tail call void @__clang_call_terminate(ptr %i.ae) #19
  unreachable

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 48) #22
  br label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i
  %.sroa.0.010 = phi ptr [ %i.b, %.thread ], [ %i.e, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret ptr %.sroa.0.010
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, ptr } @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !22
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !84   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !71
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, 1099511627775
  %i.k = load ptr, ptr %2, align 8, !tbaa !71
  %i.l = load i64, ptr %i.k, align 8
  %i.m = and i64 %i.l, 1099511627775
  %i.n = icmp samesign ult i64 %i.j, %i.m
  br i1 %i.n, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE24_M_get_insert_unique_posERS5_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.o, align 8, !tbaa !84 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.p = load ptr, ptr %2, align 8, !tbaa !71
  %i.q = load i64, ptr %i.p, align 8
  %i.r = and i64 %i.q, 1099511627775              ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !71
  %i.u = load i64, ptr %i.t, align 8
  %i.v = and i64 %i.u, 1099511627775              ; 2 uses
  %i.w = icmp samesign ult i64 %i.r, %i.v         ; 2 uses
  %.in.v.i = select i1 %i.w, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !84 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !159

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.w, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !20
  %i.z = icmp eq ptr %.019.lcssa29.i, %i.y
  br i1 %i.z, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE24_M_get_insert_unique_posERS5_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.aa = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #23 ; 2 uses
  %.phi.trans.insert82 = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %.pre83 = load ptr, ptr %.phi.trans.insert82, align 8, !tbaa !71
  %.pre84 = load i64, ptr %.pre83, align 8
  %.pre85 = load ptr, ptr %2, align 8, !tbaa !71
  %.pre86 = load i64, ptr %.pre85, align 8
  %.pre87 = and i64 %.pre84, 1099511627775
  %.pre88 = and i64 %.pre86, 1099511627775
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %.pre-phi89 = phi i64 [ %.pre88, %bb.f ], [ %i.r, %._crit_edge.i ]
  %.pre-phi = phi i64 [ %.pre87, %bb.f ], [ %i.v, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.aa, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %i.ab = icmp samesign ult i64 %.pre-phi, %.pre-phi89 ; 2 uses
  %spec.select.i = select i1 %i.ab, ptr null, ptr %.sroa.05.0.i
  %spec.select21.i = select i1 %i.ab, ptr %.019.lcssa28.i, ptr null
  br label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE24_M_get_insert_unique_posERS5_.exit

bb.h:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ad = load ptr, ptr %2, align 8, !tbaa !71
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = and i64 %i.ae, 1099511627775            ; 8 uses
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !71
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = and i64 %i.ah, 1099511627775            ; 2 uses
  %i.aj = icmp samesign ult i64 %i.af, %i.ai
  br i1 %i.aj, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !84 ; 4 uses
  %i.am = icmp eq ptr %i.al, %1
  br i1 %i.am, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE24_M_get_insert_unique_posERS5_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #23 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !71
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = and i64 %i.aq, 1099511627775
  %i.as = icmp samesign ult i64 %i.ar, %i.af
  br i1 %i.as, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !103
  %i.av = icmp eq ptr %i.au, null                 ; 2 uses
  %spec.select = select i1 %i.av, ptr null, ptr %1
  %spec.select71 = select i1 %i.av, ptr %i.an, ptr %1
  br label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE24_M_get_insert_unique_posERS5_.exit

bb.l:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i10 = load ptr, ptr %i.aw, align 8, !tbaa !84 ; 2 uses
  %.not23.i11 = icmp eq ptr %.02022.i10, null
  br i1 %.not23.i11, label %._crit_edge.thread.i27, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02024.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02022.i10, %bb.l ] ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !71
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = and i64 %i.az, 1099511627775            ; 2 uses
  %i.bb = icmp samesign ult i64 %i.af, %i.ba      ; 2 uses
  %.in.v.i14 = select i1 %i.bb, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8, !tbaa !84 ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !159

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.bb, label %._crit_edge.thread.i27, label %bb.n

._crit_edge.thread.i27:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa29.i28 = phi ptr [ %.02024.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.bc = icmp eq ptr %.019.lcssa29.i28, %i.al
  br i1 %i.bc, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE24_M_get_insert_unique_posERS5_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.bd = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #23 ; 2 uses
  %.phi.trans.insert79 = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %.pre80 = load ptr, ptr %.phi.trans.insert79, align 8, !tbaa !71
  %.pre81 = load i64, ptr %.pre80, align 8
  %.pre90 = and i64 %.pre81, 1099511627775
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %.pre-phi91 = phi i64 [ %.pre90, %bb.m ], [ %i.ba, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.bd, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.be = icmp samesign ult i64 %.pre-phi91, %i.af ; 2 uses
  %spec.select.i21 = select i1 %i.be, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.be, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE24_M_get_insert_unique_posERS5_.exit

bb.o:                                             ; preds = %bb.h
  %i.bf = icmp samesign ult i64 %i.ai, %i.af
  br i1 %i.bf, label %bb.p, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE24_M_get_insert_unique_posERS5_.exit

bb.p:                                             ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !84 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %1
  br i1 %i.bi, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE24_M_get_insert_unique_posERS5_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #23 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !71
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = and i64 %i.bm, 1099511627775
  %i.bo = icmp samesign ult i64 %i.af, %i.bn
  br i1 %i.bo, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !103
  %i.br = icmp eq ptr %i.bq, null                 ; 2 uses
  %spec.select72 = select i1 %i.br, ptr null, ptr %i.bj
  %spec.select73 = select i1 %i.br, ptr %1, ptr %i.bj
  br label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE24_M_get_insert_unique_posERS5_.exit

bb.s:                                             ; preds = %bb.q
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.bs, align 8, !tbaa !84 ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !71
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = and i64 %i.bv, 1099511627775            ; 2 uses
  %i.bx = icmp samesign ult i64 %i.af, %i.bw      ; 2 uses
  %.in.v.i34 = select i1 %i.bx, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8, !tbaa !84 ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !159

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bx, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !20
  %i.ca = icmp eq ptr %.019.lcssa29.i48, %i.bz
  br i1 %i.ca, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE24_M_get_insert_unique_posERS5_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.cb = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #23 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !71
  %.pre78 = load i64, ptr %.pre, align 8
  %.pre92 = and i64 %.pre78, 1099511627775
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i38
  %.pre-phi93 = phi i64 [ %.pre92, %bb.t ], [ %i.bw, %._crit_edge.i38 ]
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.cb, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %i.cc = icmp samesign ult i64 %.pre-phi93, %i.af ; 2 uses
  %spec.select.i41 = select i1 %i.cc, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.cc, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE24_M_get_insert_unique_posERS5_.exit

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE24_M_get_insert_unique_posERS5_.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.al, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.bh, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.al, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !71   ; 3 uses
  %i.e = load i64, ptr %i.d, align 8              ; 3 uses
  %i.f = and i64 %i.e, 1152920405095219200
  %.not.i.i.i.i.i = icmp eq i64 %i.f, 1152920405095219200
  br i1 %.not.i.i.i.i.i, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit, label %bb.c, !prof !74

bb.c:                                             ; preds = %bb.b
  %i.g = add i64 %i.e, 1152920405095219200
  %i.h = and i64 %i.g, 1152920405095219200        ; 2 uses
  %i.i = and i64 %i.e, -1152920405095219201
  %i.j = or disjoint i64 %i.h, %i.i
  store i64 %i.j, ptr %i.d, align 8
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %bb.d, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit, !prof !74

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #19
  unreachable

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit: ; preds = %bb.b, %bb.c, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 48) #22
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESH_IJEEEEEvPSt13_Rb_tree_nodeIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i64, ptr %3, align 8, !tbaa !86
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !71   ; 5 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !71
  %i.e = load i64, ptr %i.d, align 8              ; 3 uses
  %i.f = lshr i64 %i.e, 40
  %i.g = trunc nuw nsw i64 %i.f to i32
  %i.h = and i32 %i.g, 1048575                    ; 3 uses
  %i.i = icmp samesign ult i32 %i.h, 1048574
  br i1 %i.i, label %bb.b, label %bb.c, !prof !75

bb.b:                                             ; preds = %bb.a
  %i.j = add nuw nsw i32 %i.h, 1
  %i.k = zext nneg i32 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 40
  %i.m = and i64 %i.e, -1152920405095219201
  %i.n = or i64 %i.l, %i.m
  store i64 %i.n, ptr %i.d, align 8
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.o = icmp eq i32 %i.h, 1048574
  br i1 %i.o, label %bb.d, label %bb.g, !prof !74

bb.d:                                             ; preds = %bb.c
  %i.p = or i64 %i.e, 1152920405095219200
  store i64 %i.p, ptr %i.d, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %i.r) #18 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 48) #22
  invoke void @__cxa_rethrow() #21
          to label %bb.j unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.g:                                             ; preds = %bb.c, %bb.b, %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i8 0, ptr %i.u, align 8, !tbaa !102
  ret void

bb.h:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.t

bb.i:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #19
  unreachable

bb.j:                                             ; preds = %bb.e
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #13

declare noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { builtin allocsize(0) }
attributes #21 = { noreturn }
attributes #22 = { builtin nounwind }
attributes #23 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{null, null, null, null, null, null, null}
!1 = distinct !{!1, !81}
!2 = distinct !{!2, !81}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"vtable pointer", !6, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"_ZTSSt14_Rb_tree_color", !7, i64 0}
!14 = !{!"any pointer", !7, i64 0}
!15 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !14, i64 0}
!16 = !{!"_ZTSSt18_Rb_tree_node_base", !13, i64 0, !15, i64 8, !15, i64 16, !15, i64 24}
!17 = !{!"long", !7, i64 0}
!18 = !{!"_ZTSSt15_Rb_tree_header", !16, i64 0, !17, i64 32}
!19 = !{!18, !15, i64 8}
!20 = !{!18, !15, i64 16}
!21 = !{!18, !15, i64 24}
!22 = !{!18, !17, i64 32}
!23 = !{!"p1 _ZTSN4cvc58internal3EnvE", !14, i64 0}
!24 = !{!"_ZTSN4cvc58internal6EnvObjE", !23, i64 8}
!25 = !{!"p1 _ZTSN4cvc58internal6theory6TheoryE", !14, i64 0}
!26 = !{!"p1 _ZTSN4cvc58internal6theory11TheoryStateE", !14, i64 0}
!27 = !{!"p1 _ZTSN4cvc58internal6theory13OutputChannelE", !14, i64 0}
!28 = !{!"p1 _ZTSN4cvc58internal6theory2eq14EqualityEngineE", !14, i64 0}
!29 = !{!"p1 _ZTSN4cvc58internal6theory15DecisionManagerE", !14, i64 0}
!30 = !{!"p1 _ZTSN4cvc58internal6theory2eq13ProofEqEngineE", !14, i64 0}
!31 = !{!"_ZTSSt10_Head_baseILm0EPN4cvc58internal6theory2eq13ProofEqEngineELb0EE", !30, i64 0}
!32 = !{!"_ZTSSt11_Tuple_implILm0EJPN4cvc58internal6theory2eq13ProofEqEngineESt14default_deleteIS4_EEE", !31, i64 0}
!33 = !{!"_ZTSSt5tupleIJPN4cvc58internal6theory2eq13ProofEqEngineESt14default_deleteIS4_EEE", !32, i64 0}
!34 = !{!"_ZTSSt15__uniq_ptr_implIN4cvc58internal6theory2eq13ProofEqEngineESt14default_deleteIS4_EE", !33, i64 0}
!35 = !{!"_ZTSSt15__uniq_ptr_dataIN4cvc58internal6theory2eq13ProofEqEngineESt14default_deleteIS4_ELb1ELb1EE", !34, i64 0}
!36 = !{!"_ZTSSt10unique_ptrIN4cvc58internal6theory2eq13ProofEqEngineESt14default_deleteIS4_EE", !35, i64 0}
!37 = !{!"p1 _ZTSN4cvc58internal19EagerProofGeneratorE", !14, i64 0}
!38 = !{!"_ZTSSt10_Head_baseILm0EPN4cvc58internal19EagerProofGeneratorELb0EE", !37, i64 0}
!39 = !{!"_ZTSSt11_Tuple_implILm0EJPN4cvc58internal19EagerProofGeneratorESt14default_deleteIS2_EEE", !38, i64 0}
!40 = !{!"_ZTSSt5tupleIJPN4cvc58internal19EagerProofGeneratorESt14default_deleteIS2_EEE", !39, i64 0}
!41 = !{!"_ZTSSt15__uniq_ptr_implIN4cvc58internal19EagerProofGeneratorESt14default_deleteIS2_EE", !40, i64 0}
!42 = !{!"_ZTSSt15__uniq_ptr_dataIN4cvc58internal19EagerProofGeneratorESt14default_deleteIS2_ELb1ELb1EE", !41, i64 0}
!43 = !{!"_ZTSSt10unique_ptrIN4cvc58internal19EagerProofGeneratorESt14default_deleteIS2_EE", !42, i64 0}
!44 = !{!"bool", !7, i64 0}
!45 = !{!"p1 _ZTSN4cvc57context5ScopeE", !14, i64 0}
!46 = !{!"p1 _ZTSN4cvc57context10ContextObjE", !14, i64 0}
!47 = !{!"any p2 pointer", !14, i64 0}
!48 = !{!"p2 _ZTSN4cvc57context10ContextObjE", !47, i64 0}
!49 = !{!"_ZTSN4cvc57context10ContextObjE", !45, i64 8, !46, i64 16, !46, i64 24, !48, i64 32}
!50 = !{!"p1 _ZTSN4cvc57context13InsertHashMapINS_8internal12NodeTemplateILb1EEEbSt4hashIS4_EEE", !14, i64 0}
!51 = !{!"_ZTSN4cvc57context15CDInsertHashMapINS_8internal12NodeTemplateILb1EEEbSt4hashIS4_EEE", !49, i64 0, !50, i64 40, !17, i64 48}
!52 = !{!"_ZTSN4cvc57context9CDHashSetINS_8internal12NodeTemplateILb1EEESt4hashIS4_EEE", !51, i64 0}
!53 = !{!"p1 _ZTSN4cvc58internal23StatisticHistogramValueINS0_6theory11InferenceIdEEE", !14, i64 0}
!54 = !{!"_ZTSN4cvc58internal13HistogramStatINS0_6theory11InferenceIdEEE", !53, i64 0}
!55 = !{!"_ZTSN4cvc58internal6theory22TheoryInferenceManagerE", !24, i64 0, !25, i64 16, !26, i64 24, !27, i64 32, !28, i64 40, !29, i64 48, !30, i64 56, !36, i64 64, !43, i64 72, !44, i64 80, !52, i64 88, !52, i64 144, !8, i64 200, !8, i64 204, !8, i64 208, !54, i64 216, !54, i64 224, !54, i64 232}
!56 = !{!"p1 _ZTSSt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS3_EE", !14, i64 0}
!57 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE17_Vector_impl_dataE", !56, i64 0, !56, i64 8, !56, i64 16}
!58 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE12_Vector_implE", !57, i64 0}
!59 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE", !58, i64 0}
!60 = !{!"_ZTSSt6vectorISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EESaIS7_EE", !59, i64 0}
!61 = !{!"_ZTSSt4lessIN4cvc58internal12NodeTemplateILb1EEEE"}
!62 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIN4cvc58internal12NodeTemplateILb1EEEEE", !61, i64 0}
!63 = !{!"_ZTSNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE13_Rb_tree_implISA_Lb1EEE", !62, i64 0, !18, i64 8}
!64 = !{!"_ZTSSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE", !63, i64 0}
!65 = !{!"_ZTSSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE", !64, i64 0}
!66 = !{!"_ZTSN4cvc58internal6theory24InferenceManagerBufferedE", !55, i64 0, !60, i64 240, !60, i64 264, !65, i64 288, !44, i64 336}
!67 = !{!66, !44, i64 336}
!68 = !{!56, !56, i64 0}
!69 = !{!"p1 _ZTSN4cvc58internal4expr9NodeValueE", !14, i64 0}
!70 = !{!"_ZTSN4cvc58internal12NodeTemplateILb1EEE", !69, i64 0}
!71 = !{!70, !69, i64 0}
!72 = !{!"_ZTSN4cvc58internal12NodeTemplateILb0EEE", !69, i64 0}
!73 = !{!72, !69, i64 0}
!74 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!75 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!76 = !{!57, !56, i64 8}
!77 = !{!57, !56, i64 16}
!78 = !{!"p1 _ZTSN4cvc58internal6theory15TheoryInferenceE", !14, i64 0}
!79 = !{!78, !78, i64 0}
!80 = !{!57, !56, i64 0}
!81 = !{!"llvm.loop.mustprogress"}
!82 = !{!"llvm.loop.isvectorized", i32 1}
!83 = !{!"llvm.loop.unroll.runtime.disable"}
!84 = !{!15, !15, i64 0}
!85 = !{!"p1 _ZTSN4cvc58internal12NodeTemplateILb1EEE", !14, i64 0}
!86 = !{!85, !85, i64 0}
!87 = !{!55, !26, i64 24}
!88 = !{}
!89 = !{i64 8}
!90 = !{!69, !69, i64 0}
!91 = !{!"_ZTSN4cvc58internal6theory11InferenceIdE", !7, i64 0}
!92 = !{!"_ZTSN4cvc58internal6theory15TheoryInferenceE", !91, i64 8}
!93 = !{!92, !91, i64 8}
!94 = !{!"_ZTSNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_Vector_impl_dataE", !85, i64 0, !85, i64 8, !85, i64 16}
!95 = !{!94, !85, i64 0}
!96 = !{!94, !85, i64 8}
!97 = !{!94, !85, i64 16}
!98 = !{i8 0, i8 2}
!99 = !{!"_ZTSN4cvc58internal6theory13LemmaPropertyE", !7, i64 0}
!100 = !{!99, !99, i64 0}
!101 = !{!"_ZTSSt4pairIKN4cvc58internal12NodeTemplateILb1EEEbE", !70, i64 0, !44, i64 8}
!102 = !{!101, !44, i64 8}
!103 = !{!16, !15, i64 24}
!104 = !{!"p1 _ZTSSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE", !14, i64 0}
!105 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKN4cvc58internal12NodeTemplateILb1EEEbEE", !14, i64 0}
!106 = !{!"_ZTSNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE10_Auto_nodeE", !104, i64 0, !105, i64 8}
!107 = !{!106, !105, i64 8}
!108 = !{!18, !13, i64 0}
!109 = distinct !{!109, i1 true, !"_ZSt19__relocate_object_aISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EES7_SaIS7_EEvPT_PT0_RT1_"}
!110 = distinct !{!110, !109, !"_ZSt19__relocate_object_aISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EES7_SaIS7_EEvPT_PT0_RT1_: argument 0"}
!111 = distinct !{!111, !109, !"_ZSt19__relocate_object_aISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EES7_SaIS7_EEvPT_PT0_RT1_: argument 1"}
!112 = distinct !{!112, !81, !82, !83}
!113 = distinct !{!113, !81, !83, !82}
!114 = !{!110}
!115 = !{!111}
!116 = distinct !{!116, i1 true, !"_ZSt19__relocate_object_aISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EES7_SaIS7_EEvPT_PT0_RT1_"}
!117 = distinct !{!117, !116, !"_ZSt19__relocate_object_aISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EES7_SaIS7_EEvPT_PT0_RT1_: argument 0"}
!118 = distinct !{!118, !116, !"_ZSt19__relocate_object_aISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EES7_SaIS7_EEvPT_PT0_RT1_: argument 1"}
!119 = distinct !{!119, !81, !82, !83}
!120 = distinct !{!120, !81, !83, !82}
!121 = !{!117}
!122 = !{!118}
!123 = distinct !{!123, !81}
!124 = !{!44, !44, i64 0}
!125 = distinct !{!125, !81}
!126 = distinct !{!126, i1 true, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!127 = distinct !{!127, !126, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!128 = !{!"p1 _ZTSN4cvc58internal14ProofGeneratorE", !14, i64 0}
!129 = !{!128, !128, i64 0}
!130 = !{!127}
!131 = distinct !{!131, !81}
!132 = !{ptr @_ZN4cvc58internal6theory24InferenceManagerBuffered20lemmaTheoryInferenceEPNS1_15TheoryInferenceE}
!133 = distinct !{ptr @_ZN4cvc58internal6theory24InferenceManagerBuffered12clearPendingEv, null, null, null, null, null, null, null}
!134 = distinct !{null, null, null, null, null, null}
!135 = !{!"branch_weights", i32 1, i32 1048575}
!136 = distinct !{!136, !81}
!137 = !{!16, !15, i64 16}
!138 = distinct !{!138, i1 true, !"_ZSt19__relocate_object_aISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EES7_SaIS7_EEvPT_PT0_RT1_"}
!139 = distinct !{!139, !138, !"_ZSt19__relocate_object_aISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EES7_SaIS7_EEvPT_PT0_RT1_: argument 0"}
!140 = distinct !{!140, !138, !"_ZSt19__relocate_object_aISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EES7_SaIS7_EEvPT_PT0_RT1_: argument 1"}
!141 = distinct !{!141, !81, !82, !83}
!142 = distinct !{!142, !81, !83, !82}
!143 = distinct !{!143, i1 true, !"_ZSt19__relocate_object_aISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EES7_SaIS7_EEvPT_PT0_RT1_"}
!144 = distinct !{!144, !143, !"_ZSt19__relocate_object_aISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EES7_SaIS7_EEvPT_PT0_RT1_: argument 0"}
!145 = distinct !{!145, !143, !"_ZSt19__relocate_object_aISt10unique_ptrIN4cvc58internal6theory15TheoryInferenceESt14default_deleteIS4_EES7_SaIS7_EEvPT_PT0_RT1_: argument 1"}
!146 = distinct !{!146, i1 false, !"LVerDomain"}
!147 = distinct !{!147, !146}
!148 = distinct !{!148, !146}
!149 = distinct !{!149, !81, !82, !83}
!150 = distinct !{!150, !81, !82}
!151 = !{!139}
!152 = !{!140}
!153 = !{!144}
!154 = !{!145}
!155 = !{!145, !147}
!156 = !{!144, !148}
!157 = !{!147}
!158 = !{!104, !104, i64 0}
!159 = distinct !{!159, !81}
end_hunk_1
