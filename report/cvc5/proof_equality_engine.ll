Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/proof_equality_engine?download=true
inline.NumInlined: 1926
inline.NumDeleted: 660
begin_hunk_0_@_ZN4cvc58internal6theory2eq13ProofEqEngine10assertFactENS0_12NodeTemplateILb1EEES5_PNS0_14ProofGeneratorE:bb.a

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  %i.f = tail call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef 20), !noalias !214
  %i.g = icmp eq i32 %i.f, 2
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.i = zext i1 %i.g to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !30, !noalias !214 ; 8 uses
  store ptr %i.k, ptr %4, align 8, !tbaa !32, !alias.scope !214
  %i.l = load i64, ptr %i.k, align 8, !noalias !214 ; 3 uses
  %i.m = lshr i64 %i.l, 40
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = and i32 %i.n, 1048575                    ; 3 uses
  %i.p = icmp samesign ult i32 %i.o, 1048574
  br i1 %i.p, label %bb.c, label %bb.d, !prof !53

bb.c:                                             ; preds = %bb.b
  %i.q = add nuw nsw i32 %i.o, 1
  %i.r = zext nneg i32 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 40
  %i.t = and i64 %i.l, -1152920405095219201
  %i.u = or i64 %i.s, %i.t
  store i64 %i.u, ptr %i.k, align 8, !noalias !214
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.v = icmp eq i32 %i.o, 1048574
  br i1 %i.v, label %bb.e, label %bb.j, !prof !52

bb.e:                                             ; preds = %bb.d
  %i.w = or i64 %i.l, 1152920405095219200
  store i64 %i.w, ptr %i.k, align 8, !noalias !214
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.k), !noalias !214
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  store ptr %i.a, ptr %4, align 8, !tbaa !32
  %i.x = load i64, ptr %i.a, align 8              ; 3 uses
  %i.y = lshr i64 %i.x, 40
  %i.z = trunc nuw nsw i64 %i.y to i32
  %i.aa = and i32 %i.z, 1048575                   ; 3 uses
  %i.ab = icmp samesign ult i32 %i.aa, 1048574
  br i1 %i.ab, label %bb.g, label %bb.h, !prof !53

bb.g:                                             ; preds = %bb.f
  %i.ac = add nuw nsw i32 %i.aa, 1
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 40
  %i.af = and i64 %i.x, -1152920405095219201
  %i.ag = or i64 %i.ae, %i.af
  store i64 %i.ag, ptr %i.a, align 8
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.ah = icmp eq i32 %i.aa, 1048574
  br i1 %i.ah, label %bb.i, label %bb.j, !prof !52

bb.i:                                             ; preds = %bb.h
  %i.ai = or i64 %i.x, 1152920405095219200
  store i64 %i.ai, ptr %i.a, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.g, %bb.h, %bb.i
  %i.aj = phi ptr [ %i.k, %bb.c ], [ %i.k, %bb.d ], [ %i.k, %bb.e ], [ %i.a, %bb.g ], [ %i.a, %bb.h ], [ %i.a, %bb.i ] ; 5 uses
  %i.ak = load ptr, ptr %1, align 8, !tbaa !32
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i64, ptr %i.al, align 8
  %i.an = and i64 %i.am, 1023
  %i.ao = icmp ne i64 %i.an, 20                   ; 2 uses
  store ptr %i.aj, ptr %5, align 8, !tbaa !57
  %i.ap = invoke noundef zeroext i1 @_ZN4cvc58internal6theory2eq13ProofEqEngine5holdsENS0_12NodeTemplateILb0EEEb(ptr noundef nonnull align 8 dereferenceable(976) %0, ptr noundef nonnull align 8 %5, i1 noundef zeroext %i.ao)
          to label %bb.k unwind label %bb.u

bb.k:                                             ; preds = %bb.j
  br i1 %i.ap, label %bb.v, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = load ptr, ptr %1, align 8, !tbaa !32    ; 5 uses
  store ptr %i.aq, ptr %6, align 8, !tbaa !32
  %i.ar = load i64, ptr %i.aq, align 8            ; 3 uses
  %i.as = lshr i64 %i.ar, 40
  %i.at = trunc nuw nsw i64 %i.as to i32
  %i.au = and i32 %i.at, 1048575                  ; 3 uses
  %i.av = icmp samesign ult i32 %i.au, 1048574
  br i1 %i.av, label %bb.m, label %bb.n, !prof !53

bb.m:                                             ; preds = %bb.l
  %i.aw = add nuw nsw i32 %i.au, 1
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = shl nuw nsw i64 %i.ax, 40
  %i.az = and i64 %i.ar, -1152920405095219201
  %i.ba = or i64 %i.ay, %i.az
  store i64 %i.ba, ptr %i.aq, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit19

bb.n:                                             ; preds = %bb.l
  %i.bb = icmp eq i32 %i.au, 1048574
  br i1 %i.bb, label %bb.o, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit19, !prof !52

bb.o:                                             ; preds = %bb.n
  %i.bc = or i64 %i.ar, 1152920405095219200
  store i64 %i.bc, ptr %i.aq, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit19 unwind label %bb.u

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit19: ; preds = %bb.n, %bb.m, %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 512
  invoke void @_ZN4cvc58internal11LazyCDProof11addLazyStepENS0_12NodeTemplateILb1EEEPNS0_14ProofGeneratorENS0_7TrustIdEbPKcb(ptr noundef nonnull align 8 dereferenceable(408) %i.bd, ptr noundef nonnull align 8 %6, ptr noundef %3, i32 noundef 0, i1 noundef zeroext false, ptr noundef nonnull @.str.11, i1 noundef zeroext false)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit19
  %i.be = load ptr, ptr %6, align 8, !tbaa !32    ; 3 uses
  %i.bf = load i64, ptr %i.be, align 8            ; 3 uses
  %i.bg = and i64 %i.bf, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.bg, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.q, !prof !52

bb.q:                                             ; preds = %bb.p
  %i.bh = add i64 %i.bf, 1152920405095219200
  %i.bi = and i64 %i.bh, 1152920405095219200      ; 2 uses
  %i.bj = and i64 %i.bf, -1152920405095219201
  %i.bk = or disjoint i64 %i.bi, %i.bj
  store i64 %i.bk, ptr %i.be, align 8
  %i.bl = icmp eq i64 %i.bi, 0
  br i1 %i.bl, label %bb.r, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !52

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  call void @__clang_call_terminate(ptr %i.bn) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.p, %bb.q, %bb.r
  store ptr %i.aj, ptr %7, align 8, !tbaa !57
  %i.bo = load ptr, ptr %2, align 8, !tbaa !32
  store ptr %i.bo, ptr %8, align 8, !tbaa !57
  %i.bp = invoke noundef zeroext i1 @_ZN4cvc58internal6theory2eq13ProofEqEngine18assertFactInternalENS0_12NodeTemplateILb0EEEbS5_(ptr noundef nonnull align 8 dereferenceable(976) %0, ptr noundef nonnull align 8 %7, i1 noundef zeroext %i.ao, ptr noundef nonnull align 8 %8)
          to label %bb.v unwind label %bb.u

bb.t:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit19
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #23
  br label %bb.z

bb.u:                                             ; preds = %bb.j, %bb.o, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.v:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, %bb.k
  %.07 = phi i1 [ false, %bb.k ], [ %i.bp, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit ]
  %i.bs = load i64, ptr %i.aj, align 8            ; 3 uses
  %i.bt = and i64 %i.bs, 1152920405095219200
  %.not.i.i20 = icmp eq i64 %i.bt, 1152920405095219200
  br i1 %.not.i.i20, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit21, label %bb.w, !prof !52

bb.w:                                             ; preds = %bb.v
  %i.bu = add i64 %i.bs, 1152920405095219200
  %i.bv = and i64 %i.bu, 1152920405095219200      ; 2 uses
  %i.bw = and i64 %i.bs, -1152920405095219201
  %i.bx = or disjoint i64 %i.bv, %i.bw
  store i64 %i.bx, ptr %i.aj, align 8
  %i.by = icmp eq i64 %i.bv, 0
  br i1 %i.by, label %bb.x, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit21, !prof !52

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit21 unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit21: ; preds = %bb.v, %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret i1 %.07

bb.z:                                             ; preds = %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.br, %bb.u ], [ %i.bq, %bb.t ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory2eq13ProofEqEngine14assertConflictENS0_12NodeTemplateILb1EEE(ptr dead_on_unwind noalias writable sret(%"class.cvc5::internal::TrustNode") align 8 %0, ptr noundef nonnull align 8 dereferenceable(976) %1, ptr noundef align 8 %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.567", align 8   ; 10 uses
  %4 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 3 uses
  %5 = alloca %"class.std::vector.359", align 8   ; 14 uses
  %6 = alloca %"class.std::vector.359", align 8   ; 15 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %8 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %2, align 8, !tbaa !32     ; 8 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !32
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = lshr i64 %i.b, 40
  %i.d = trunc nuw nsw i64 %i.c to i32
  %i.e = and i32 %i.d, 1048575                    ; 3 uses
  %i.f = icmp samesign ult i32 %i.e, 1048574
  br i1 %i.f, label %bb.b, label %bb.c, !prof !53

bb.b:                                             ; preds = %bb.a
  %i.g = add nuw nsw i32 %i.e, 1
  %i.h = zext nneg i32 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 40
  %i.j = and i64 %i.b, -1152920405095219201
  %i.k = or i64 %i.i, %i.j
  store i64 %i.k, ptr %i.a, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq i32 %i.e, 1048574
  br i1 %i.l, label %bb.d, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !52

bb.d:                                             ; preds = %bb.c
  %i.m = or i64 %i.b, 1152920405095219200
  store i64 %i.m, ptr %i.a, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit unwind label %bb.r

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.c, %bb.b, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 2 uses
  invoke void @_ZN4cvc58internal6theory2eq13ProofEqEngine16explainWithProofENS0_12NodeTemplateILb1EEERSt6vectorINS4_ILb0EEESaIS7_EEPNS0_11LazyCDProofE(ptr noundef nonnull align 8 dereferenceable(976) %1, ptr noundef nonnull align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %i.n)
          to label %bb.e unwind label %bb.s

bb.e:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.o = load i64, ptr %i.a, align 8              ; 3 uses
  %i.p = and i64 %i.o, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.p, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.f, !prof !52

bb.f:                                             ; preds = %bb.e
  %i.q = add i64 %i.o, 1152920405095219200
  %i.r = and i64 %i.q, 1152920405095219200        ; 2 uses
  %i.s = and i64 %i.o, -1152920405095219201
  %i.t = or disjoint i64 %i.r, %i.s
  store i64 %i.t, ptr %i.a, align 8
  %i.u = icmp eq i64 %i.r, 0
  br i1 %i.u, label %bb.g, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !52

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.e, %bb.f, %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 3 uses
  %i.y = load ptr, ptr %2, align 8, !tbaa !32
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !32   ; 2 uses
  %.not = icmp eq ptr %i.y, %i.z
  br i1 %.not, label %bb.ap, label %bb.i

bb.i:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr null, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit unwind label %bb.t

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !32  ; 5 uses
  store ptr %i.ab, ptr %7, align 8, !tbaa !32
  %i.ac = load i64, ptr %i.ab, align 8            ; 3 uses
  %i.ad = lshr i64 %i.ac, 40
  %i.ae = trunc nuw nsw i64 %i.ad to i32
  %i.af = and i32 %i.ae, 1048575                  ; 3 uses
  %i.ag = icmp samesign ult i32 %i.af, 1048574
  br i1 %i.ag, label %bb.j, label %bb.k, !prof !53

bb.j:                                             ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit
  %i.ah = add nuw nsw i32 %i.af, 1
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 40
  %i.ak = and i64 %i.ac, -1152920405095219201
  %i.al = or i64 %i.aj, %i.ak
  store i64 %i.al, ptr %i.ab, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit16

bb.k:                                             ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit
  %i.am = icmp eq i32 %i.af, 1048574
  br i1 %i.am, label %bb.l, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit16, !prof !52

bb.l:                                             ; preds = %bb.k
  %i.an = or i64 %i.ac, 1152920405095219200
  store i64 %i.an, ptr %i.ab, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit16 unwind label %bb.u

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit16: ; preds = %bb.k, %bb.j, %bb.l
  %i.ao = invoke noundef zeroext i1 @_ZN4cvc58internal7CDProof7addStepENS0_12NodeTemplateILb1EEENS_9ProofRuleERKSt6vectorIS3_SaIS3_EES9_bNS0_12CDPOverwriteE(ptr noundef nonnull align 8 dereferenceable(217) %i.n, ptr noundef nonnull align 8 %7, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext false, i32 noundef 1)
          to label %bb.m unwind label %bb.v

bb.m:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit16
  %i.ap = load ptr, ptr %7, align 8, !tbaa !32    ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 8            ; 3 uses
  %i.ar = and i64 %i.aq, 1152920405095219200
  %.not.i.i17 = icmp eq i64 %i.ar, 1152920405095219200
  br i1 %.not.i.i17, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit18, label %bb.n, !prof !52

bb.n:                                             ; preds = %bb.m
  %i.as = add i64 %i.aq, 1152920405095219200
  %i.at = and i64 %i.as, 1152920405095219200      ; 2 uses
  %i.au = and i64 %i.aq, -1152920405095219201
  %i.av = or disjoint i64 %i.at, %i.au
  store i64 %i.av, ptr %i.ap, align 8
  %i.aw = icmp eq i64 %i.at, 0
  br i1 %i.aw, label %bb.o, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit18, !prof !52

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit18 unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit18: ; preds = %bb.m, %bb.n, %bb.o
  br i1 %i.ao, label %.critedge, label %bb.q

bb.q:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit18
  invoke void @_ZN4cvc58internal9TrustNode4nullEv(ptr dead_on_unwind writable sret(%"class.cvc5::internal::TrustNode") align 8 %0)
          to label %bb.w unwind label %bb.u

bb.r:                                             ; preds = %bb.as, %bb.d
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.s:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #23
  br label %bb.az

bb.t:                                             ; preds = %bb.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.u:                                             ; preds = %bb.l, %bb.q
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.v:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit16
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #23
  br label %bb.af

bb.w:                                             ; preds = %bb.q
  %i.be = load ptr, ptr %6, align 8, !tbaa !106   ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !105 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.be, %i.bg
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.w, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.br, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i ], [ %i.be, %bb.w ] ; 2 uses
  %i.bh = load ptr, ptr %.05.i.i.i, align 8, !tbaa !32 ; 3 uses
  %i.bi = load i64, ptr %i.bh, align 8            ; 3 uses
  %i.bj = and i64 %i.bi, 1152920405095219200
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bj, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, label %bb.x, !prof !52

bb.x:                                             ; preds = %.lr.ph.i.i.i
  %i.bk = add i64 %i.bi, 1152920405095219200
  %i.bl = and i64 %i.bk, 1152920405095219200      ; 2 uses
  %i.bm = and i64 %i.bi, -1152920405095219201
  %i.bn = or disjoint i64 %i.bl, %i.bm
  store i64 %i.bn, ptr %i.bh, align 8
  %i.bo = icmp eq i64 %i.bl, 0
  br i1 %i.bo, label %bb.y, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, !prof !52

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  call void @__clang_call_terminate(ptr %i.bq) #26
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i: ; preds = %bb.y, %bb.x, %.lr.ph.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.br, %i.bg
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !106
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %bb.w
  %i.bs = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.be, %bb.w ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !107
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = sub i64 %i.bv, %i.bw
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bx) #24
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.by = load ptr, ptr %5, align 8, !tbaa !106   ; 3 uses
  %i.bz = load ptr, ptr %9, align 8, !tbaa !105   ; 2 uses
  %.not4.i.i.i19 = icmp eq ptr %i.by, %i.bz
  br i1 %.not4.i.i.i19, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i27, label %.lr.ph.i.i.i20

.lr.ph.i.i.i20:                                   ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i23
  %.05.i.i.i21 = phi ptr [ %i.ck, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i23 ], [ %i.by, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit ] ; 2 uses
  %i.ca = load ptr, ptr %.05.i.i.i21, align 8, !tbaa !32 ; 3 uses
  %i.cb = load i64, ptr %i.ca, align 8            ; 3 uses
  %i.cc = and i64 %i.cb, 1152920405095219200
  %.not.i.i.i.i.i.i22 = icmp eq i64 %i.cc, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i22, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i23, label %bb.ab, !prof !52

bb.ab:                                            ; preds = %.lr.ph.i.i.i20
  %i.cd = add i64 %i.cb, 1152920405095219200
  %i.ce = and i64 %i.cd, 1152920405095219200      ; 2 uses
  %i.cf = and i64 %i.cb, -1152920405095219201
  %i.cg = or disjoint i64 %i.ce, %i.cf
  store i64 %i.cg, ptr %i.ca, align 8
  %i.ch = icmp eq i64 %i.ce, 0
  br i1 %i.ch, label %bb.ac, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i23, !prof !52

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ca)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i23 unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  call void @__clang_call_terminate(ptr %i.cj) #26
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i23: ; preds = %bb.ac, %bb.ab, %.lr.ph.i.i.i20
  %i.ck = getelementptr inbounds nuw i8, ptr %.05.i.i.i21, i64 8 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.ck, %i.bz
  br i1 %.not.i.i.i24, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i25, label %.lr.ph.i.i.i20, !llvm.loop !0

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i25: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i23
  %.pr.i26 = load ptr, ptr %5, align 8, !tbaa !106
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i27

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i27: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i25, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit
  %i.cl = phi ptr [ %.pr.i26, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i25 ], [ %i.by, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i28 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i1.i28, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit29, label %bb.ae

bb.ae:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i27
  %i.cm = load ptr, ptr %i.aa, align 8, !tbaa !107
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = ptrtoint ptr %i.cl to i64
  %i.cp = sub i64 %i.cn, %i.co
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.cp) #24
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit29

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit29: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i27, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit55

bb.af:                                            ; preds = %bb.v, %bb.u
  %.pn = phi { ptr, i32 } [ %i.bc, %bb.u ], [ %i.bd, %bb.v ]
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.t
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.af ], [ %i.bb, %bb.t ]
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.az

.critedge:                                        ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit18
  %i.cq = load ptr, ptr %6, align 8, !tbaa !106   ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !105 ; 2 uses
  %.not4.i.i.i30 = icmp eq ptr %i.cq, %i.cs
  br i1 %.not4.i.i.i30, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i38, label %.lr.ph.i.i.i31

.lr.ph.i.i.i31:                                   ; preds = %.critedge, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i34
  %.05.i.i.i32 = phi ptr [ %i.dd, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i34 ], [ %i.cq, %.critedge ] ; 2 uses
  %i.ct = load ptr, ptr %.05.i.i.i32, align 8, !tbaa !32 ; 3 uses
  %i.cu = load i64, ptr %i.ct, align 8            ; 3 uses
  %i.cv = and i64 %i.cu, 1152920405095219200
  %.not.i.i.i.i.i.i33 = icmp eq i64 %i.cv, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i33, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i34, label %bb.ah, !prof !52

bb.ah:                                            ; preds = %.lr.ph.i.i.i31
  %i.cw = add i64 %i.cu, 1152920405095219200
  %i.cx = and i64 %i.cw, 1152920405095219200      ; 2 uses
  %i.cy = and i64 %i.cu, -1152920405095219201
  %i.cz = or disjoint i64 %i.cx, %i.cy
  store i64 %i.cz, ptr %i.ct, align 8
  %i.da = icmp eq i64 %i.cx, 0
  br i1 %i.da, label %bb.ai, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i34, !prof !52

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ct)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i34 unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.db = landingpad { ptr, i32 }
          catch ptr null
  %i.dc = extractvalue { ptr, i32 } %i.db, 0
  call void @__clang_call_terminate(ptr %i.dc) #26
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i34: ; preds = %bb.ai, %bb.ah, %.lr.ph.i.i.i31
  %i.dd = getelementptr inbounds nuw i8, ptr %.05.i.i.i32, i64 8 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.dd, %i.cs
  br i1 %.not.i.i.i35, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i36, label %.lr.ph.i.i.i31, !llvm.loop !0

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i36: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i34
  %.pr.i37 = load ptr, ptr %6, align 8, !tbaa !106
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i38

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i38: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i36, %.critedge
  %i.de = phi ptr [ %.pr.i37, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i36 ], [ %i.cq, %.critedge ] ; 3 uses
  %.not.i.i1.i39 = icmp eq ptr %i.de, null
  br i1 %.not.i.i1.i39, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit40, label %bb.ak

bb.ak:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i38
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !107
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = ptrtoint ptr %i.de to i64
  %i.dj = sub i64 %i.dh, %i.di
  call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef %i.dj) #24
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit40

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit40: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i38, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.dk = load ptr, ptr %5, align 8, !tbaa !106   ; 3 uses
  %i.dl = load ptr, ptr %9, align 8, !tbaa !105   ; 2 uses
  %.not4.i.i.i41 = icmp eq ptr %i.dk, %i.dl
  br i1 %.not4.i.i.i41, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i49, label %.lr.ph.i.i.i42

.lr.ph.i.i.i42:                                   ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit40, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i45
  %.05.i.i.i43 = phi ptr [ %i.dw, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i45 ], [ %i.dk, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit40 ] ; 2 uses
  %i.dm = load ptr, ptr %.05.i.i.i43, align 8, !tbaa !32 ; 3 uses
  %i.dn = load i64, ptr %i.dm, align 8            ; 3 uses
  %i.do = and i64 %i.dn, 1152920405095219200
  %.not.i.i.i.i.i.i44 = icmp eq i64 %i.do, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i44, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i45, label %bb.al, !prof !52

bb.al:                                            ; preds = %.lr.ph.i.i.i42
  %i.dp = add i64 %i.dn, 1152920405095219200
  %i.dq = and i64 %i.dp, 1152920405095219200      ; 2 uses
  %i.dr = and i64 %i.dn, -1152920405095219201
  %i.ds = or disjoint i64 %i.dq, %i.dr
  store i64 %i.ds, ptr %i.dm, align 8
  %i.dt = icmp eq i64 %i.dq, 0
  br i1 %i.dt, label %bb.am, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i45, !prof !52

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dm)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i45 unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.du = landingpad { ptr, i32 }
          catch ptr null
  %i.dv = extractvalue { ptr, i32 } %i.du, 0
  call void @__clang_call_terminate(ptr %i.dv) #26
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i45: ; preds = %bb.am, %bb.al, %.lr.ph.i.i.i42
  %i.dw = getelementptr inbounds nuw i8, ptr %.05.i.i.i43, i64 8 ; 2 uses
  %.not.i.i.i46 = icmp eq ptr %i.dw, %i.dl
  br i1 %.not.i.i.i46, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i47, label %.lr.ph.i.i.i42, !llvm.loop !0

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i47: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i45
  %.pr.i48 = load ptr, ptr %5, align 8, !tbaa !106
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i49

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i49: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i47, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit40
  %i.dx = phi ptr [ %.pr.i48, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i47 ], [ %i.dk, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit40 ] ; 3 uses
  %.not.i.i1.i50 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i1.i50, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit51, label %bb.ao

bb.ao:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i49
  %i.dy = load ptr, ptr %i.aa, align 8, !tbaa !107
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %i.dx to i64
  %i.eb = sub i64 %i.dz, %i.ea
  call void @_ZdlPvm(ptr noundef nonnull %i.dx, i64 noundef %i.eb) #24
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit51

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit51: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i49, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %.pre = load ptr, ptr %i.x, align 8, !tbaa !32
  br label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit51, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.ec = phi ptr [ %.pre, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit51 ], [ %i.z, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit ] ; 8 uses
  store ptr %i.ec, ptr %8, align 8, !tbaa !32
  %i.ed = load i64, ptr %i.ec, align 8            ; 3 uses
  %i.ee = lshr i64 %i.ed, 40
  %i.ef = trunc nuw nsw i64 %i.ee to i32
  %i.eg = and i32 %i.ef, 1048575                  ; 3 uses
  %i.eh = icmp samesign ult i32 %i.eg, 1048574
  br i1 %i.eh, label %bb.aq, label %bb.ar, !prof !53

bb.aq:                                            ; preds = %bb.ap
  %i.ei = add nuw nsw i32 %i.eg, 1
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = shl nuw nsw i64 %i.ej, 40
  %i.el = and i64 %i.ed, -1152920405095219201
  %i.em = or i64 %i.ek, %i.el
  store i64 %i.em, ptr %i.ec, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit53

bb.ar:                                            ; preds = %bb.ap
  %i.en = icmp eq i32 %i.eg, 1048574
  br i1 %i.en, label %bb.as, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit53, !prof !52

bb.as:                                            ; preds = %bb.ar
  %i.eo = or i64 %i.ed, 1152920405095219200
  store i64 %i.eo, ptr %i.ec, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ec)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit53 unwind label %bb.r

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit53: ; preds = %bb.ar, %bb.aq, %bb.as
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 528
  invoke void @_ZN4cvc58internal6theory2eq13ProofEqEngine18ensureProofForFactENS0_12NodeTemplateILb1EEERKSt6vectorINS4_ILb0EEESaIS7_EENS0_13TrustNodeKindEPNS0_14ProofGeneratorE(ptr dead_on_unwind writable sret(%"class.cvc5::internal::TrustNode") align 8 %0, ptr noundef nonnull align 8 dereferenceable(976) %1, ptr noundef nonnull align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef 0, ptr noundef nonnull %i.ep)
          to label %bb.at unwind label %bb.ax

bb.at:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit53
  %i.eq = load i64, ptr %i.ec, align 8            ; 3 uses
  %i.er = and i64 %i.eq, 1152920405095219200
  %.not.i.i54 = icmp eq i64 %i.er, 1152920405095219200
  br i1 %.not.i.i54, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit55, label %bb.au, !prof !52

bb.au:                                            ; preds = %bb.at
  %i.es = add i64 %i.eq, 1152920405095219200
  %i.et = and i64 %i.es, 1152920405095219200      ; 2 uses
  %i.eu = and i64 %i.eq, -1152920405095219201
  %i.ev = or disjoint i64 %i.et, %i.eu
  store i64 %i.ev, ptr %i.ec, align 8
  %i.ew = icmp eq i64 %i.et, 0
  br i1 %i.ew, label %bb.av, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit55, !prof !52

bb.av:                                            ; preds = %bb.au
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ec)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit55 unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ex = landingpad { ptr, i32 }
          catch ptr null
  %i.ey = extractvalue { ptr, i32 } %i.ex, 0
  call void @__clang_call_terminate(ptr %i.ey) #26
  unreachable

bb.ax:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit53
  %i.ez = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #23
  br label %bb.az

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit55: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit29, %bb.av, %bb.au, %bb.at
  %i.fa = load ptr, ptr %3, align 8, !tbaa !112   ; 3 uses
  %.not.i.i.i56 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i56, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit55
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !113
  %i.fd = ptrtoint ptr %i.fc to i64
  %i.fe = ptrtoint ptr %i.fa to i64
  %i.ff = sub i64 %i.fd, %i.fe
  call void @_ZdlPvm(ptr noundef nonnull %i.fa, i64 noundef %i.ff) #24
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit55, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

bb.az:                                            ; preds = %bb.ax, %bb.ag, %bb.s, %bb.r
  %.pn9 = phi { ptr, i32 } [ %i.ez, %bb.ax ], [ %i.az, %bb.r ], [ %.pn.pn, %bb.ag ], [ %i.ba, %bb.s ]
  %i.fg = load ptr, ptr %3, align 8, !tbaa !112   ; 3 uses
  %.not.i.i.i57 = icmp eq ptr %i.fg, null
  br i1 %.not.i.i.i57, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit58, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fh = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !113
  %i.fj = ptrtoint ptr %i.fi to i64
  %i.fk = ptrtoint ptr %i.fg to i64
  %i.fl = sub i64 %i.fj, %i.fk
  call void @_ZdlPvm(ptr noundef nonnull %i.fg, i64 noundef %i.fl) #24
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit58

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit58: ; preds = %bb.az, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn9
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory2eq13ProofEqEngine16explainWithProofENS0_12NodeTemplateILb1EEERSt6vectorINS4_ILb0EEESaIS7_EEPNS0_11LazyCDProofE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(976) %0, ptr nofree noundef readonly align 8 captures(none) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::allocator.669", align 1 ; 3 uses
  %5 = alloca %"class.std::shared_ptr.582", align 8 ; 10 uses
  %6 = alloca %"class.std::vector.567", align 8   ; 12 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate.547", align 8 ; 2 uses
  %8 = alloca %"class.cvc5::internal::NodeTemplate.547", align 8 ; 2 uses
  %9 = alloca %"class.cvc5::internal::FatalStream", align 1 ; 6 uses
  %10 = alloca %"class.cvc5::internal::NodeTemplate.547", align 8 ; 2 uses
  %11 = alloca %"class.cvc5::internal::NodeTemplate.547", align 8 ; 2 uses
  %12 = alloca %"class.cvc5::internal::NodeTemplate.547", align 8 ; 2 uses
  %13 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !114    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !114  ; 3 uses
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = ashr i64 %i.f, 5                         ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.i = load ptr, ptr %1, align 8, !tbaa !32     ; 4 uses
  %i.j = and i64 %i.f, -32
  %scevgep.i.i.i = getelementptr i8, ptr %i.a, i64 %i.j ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %.052.i.i.i = phi i64 [ %i.g, %.lr.ph.i.i.i ], [ %i.w, %bb.f ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %i.a, %.lr.ph.i.i.i ], [ %i.v, %bb.f ] ; 9 uses
  %i.k = load ptr, ptr %.sroa.032.051.i.i.i, align 8, !tbaa !57
  %i.l = icmp eq ptr %i.k, %i.i
  br i1 %i.l, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEENS4_ILb1EEEET_SC_SC_RKT0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !57
  %i.o = icmp eq ptr %i.n, %i.i
  br i1 %i.o, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEENS4_ILb1EEEET_SC_SC_RKT0_.exit.loopexit.split.loop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !57
  %i.r = icmp eq ptr %i.q, %i.i
  br i1 %i.r, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEENS4_ILb1EEEET_SC_SC_RKT0_.exit.loopexit.split.loop.exit355, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !57
  %i.u = icmp eq ptr %i.t, %i.i
  br i1 %i.u, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEENS4_ILb1EEEET_SC_SC_RKT0_.exit.loopexit.split.loop.exit357, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 32
  %i.w = add nsw i64 %.052.i.i.i, -1
  %i.x = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.x, label %bb.b, label %._crit_edge.loopexit.i.i.i, !llvm.loop !215

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.f
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.d, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.a
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.f, %bb.a ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.y = ashr exact i64 %.pre-phi61.i.i.i, 3
  switch i64 %i.y, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEENS4_ILb1EEEET_SC_SC_RKT0_.exit.thread [
    i64 3, label %bb.g
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i
  %.pre58.i.i.i = load ptr, ptr %1, align 8, !tbaa !32
  br label %bb.k

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i
  %.pre.i.i.i = load ptr, ptr %1, align 8, !tbaa !32
  br label %bb.i

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.z = load ptr, ptr %.sroa.032.0.lcssa.i.i.i, align 8, !tbaa !57
end_hunk_0
begin_hunk_1_@_ZN4cvc58internal6theory2eq13ProofEqEngine16explainWithProofENS0_12NodeTemplateILb1EEERSt6vectorINS4_ILb0EEESaIS7_EEPNS0_11LazyCDProofE:bb.a
.critedge82:                                      ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit122
  %i.if = load ptr, ptr %5, align 8, !tbaa !236
  invoke void @_ZNK4cvc58internal6theory2eq7EqProof10addToProofEPNS0_7CDProofE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %13, ptr noundef nonnull align 8 dereferenceable(40) %i.if, ptr noundef %3)
          to label %bb.bc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bc:                                            ; preds = %.critedge82
  %i.ig = load ptr, ptr %13, align 8, !tbaa !32   ; 3 uses
  %i.ih = load i64, ptr %i.ig, align 8            ; 3 uses
  %i.ii = and i64 %i.ih, 1152920405095219200
  %.not.i.i192 = icmp eq i64 %i.ii, 1152920405095219200
  br i1 %.not.i.i192, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit193, label %bb.bd, !prof !52

bb.bd:                                            ; preds = %bb.bc
  %i.ij = add i64 %i.ih, 1152920405095219200
  %i.ik = and i64 %i.ij, 1152920405095219200      ; 2 uses
  %i.il = and i64 %i.ih, -1152920405095219201
  %i.im = or disjoint i64 %i.ik, %i.il
  store i64 %i.im, ptr %i.ig, align 8
  %i.in = icmp eq i64 %i.ik, 0
  br i1 %i.in, label %bb.be, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit193, !prof !52

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ig)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit193 unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.io = landingpad { ptr, i32 }
          catch ptr null
  %i.ip = extractvalue { ptr, i32 } %i.io, 0
  call void @__clang_call_terminate(ptr %i.ip) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit193: ; preds = %bb.be, %bb.bd, %bb.bc, %bb.w
  %i.iq = load ptr, ptr %6, align 8, !tbaa !112   ; 3 uses
  %.not.i.i.i197 = icmp eq ptr %i.iq, null
  br i1 %.not.i.i.i197, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit193
  %i.ir = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !113
  %i.it = ptrtoint ptr %i.is to i64
  %i.iu = ptrtoint ptr %i.iq to i64
  %i.iv = sub i64 %i.it, %i.iu
  call void @_ZdlPvm(ptr noundef nonnull %i.iq, i64 noundef %i.iv) #24
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit193, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.iw = load ptr, ptr %i.an, align 8, !tbaa !119 ; 8 uses
  %.not.i.i198 = icmp eq ptr %i.iw, null
  br i1 %.not.i.i198, label %_ZNSt12__shared_ptrIN4cvc58internal6theory2eq7EqProofELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8 ; 4 uses
  %i.iy = load atomic i64, ptr %i.ix acquire, align 8 ; 2 uses
  %i.iz = icmp eq i64 %i.iy, 4294967297
  %i.ja = trunc i64 %i.iy to i32                  ; 2 uses
  br i1 %i.iz, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i32 0, ptr %i.ix, align 8, !tbaa !121
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iw, i64 12
  store i32 0, ptr %i.jb, align 4, !tbaa !122
  %i.jc = load ptr, ptr %i.iw, align 8, !tbaa !26
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %i.je = load ptr, ptr %i.jd, align 8
  call void %i.je(ptr noundef nonnull align 8 dereferenceable(16) %i.iw) #23, !inline_history !233
  %i.jf = load ptr, ptr %i.iw, align 8, !tbaa !26
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 24
  %i.jh = load ptr, ptr %i.jg, align 8
  call void %i.jh(ptr noundef nonnull align 8 dereferenceable(16) %i.iw) #23, !inline_history !233
  br label %_ZNSt12__shared_ptrIN4cvc58internal6theory2eq7EqProofELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bj:                                            ; preds = %bb.bh
  %i.ji = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i199 = icmp eq i8 %i.ji, 0
  br i1 %.not.i.i.i199, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.jj = add nsw i32 %i.ja, -1
  store i32 %i.jj, ptr %i.ix, align 8, !tbaa !123
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.bl:                                            ; preds = %bb.bj
  %i.jk = atomicrmw volatile add ptr %i.ix, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.bl, %bb.bk
  %.0.i.i.i.i = phi i32 [ %i.ja, %bb.bk ], [ %i.jk, %bb.bl ]
  %i.jl = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.jl, label %bb.bm, label %_ZNSt12__shared_ptrIN4cvc58internal6theory2eq7EqProofELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !52

bb.bm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.iw) #23
  br label %_ZNSt12__shared_ptrIN4cvc58internal6theory2eq7EqProofELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4cvc58internal6theory2eq7EqProofELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit, %bb.bi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.bn

bb.bn:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN4cvc58internal12NodeTemplateILb0EEESt6vectorIS5_SaIS5_EEEENS4_ILb1EEEET_SC_SC_RKT0_.exit, %_ZNSt12__shared_ptrIN4cvc58internal6theory2eq7EqProofELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ag
  %.pn73.pn = phi { ptr, i32 } [ %i.dw, %bb.ag ], [ %lpad.loopexit.split-lp386, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.jm = load ptr, ptr %6, align 8, !tbaa !112   ; 3 uses
  %.not.i.i.i200 = icmp eq ptr %i.jm, null
  br i1 %.not.i.i.i200, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit201, label %bb.bo

bb.bo:                                            ; preds = %.loopexit.split-lp
  %i.jn = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !113
  %i.jp = ptrtoint ptr %i.jo to i64
  %i.jq = ptrtoint ptr %i.jm to i64
  %i.jr = sub i64 %i.jp, %i.jq
  call void @_ZdlPvm(ptr noundef nonnull %i.jm, i64 noundef %i.jr) #24
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit201

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit201: ; preds = %.loopexit.split-lp, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.bp

bb.bp:                                            ; preds = %bb.x, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit201
  %.pn73.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cv, %bb.x ], [ %.pn73.pn, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit201 ]
  call void @_ZNSt12__shared_ptrIN4cvc58internal6theory2eq7EqProofELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %.pn73.pn.pn.pn.pn
}

declare noundef zeroext i1 @_ZN4cvc58internal7CDProof7addStepENS0_12NodeTemplateILb1EEENS_9ProofRuleERKSt6vectorIS3_SaIS3_EES9_bNS0_12CDPOverwriteE(ptr noundef nonnull align 8 dereferenceable(217), ptr noundef align 8, i32 noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

declare void @_ZN4cvc58internal9TrustNode4nullEv(ptr dead_on_unwind writable sret(%"class.cvc5::internal::TrustNode") align 8) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory2eq13ProofEqEngine18ensureProofForFactENS0_12NodeTemplateILb1EEERKSt6vectorINS4_ILb0EEESaIS7_EENS0_13TrustNodeKindEPNS0_14ProofGeneratorE(ptr dead_on_unwind noalias writable sret(%"class.cvc5::internal::TrustNode") align 8 %0, ptr noundef nonnull align 8 dereferenceable(976) %1, ptr nofree noundef readonly align 8 captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate.547", align 8 ; 4 uses
  %8 = alloca %"class.cvc5::internal::NodeTemplate.547", align 8 ; 4 uses
  %9 = alloca %"class.std::shared_ptr", align 16  ; 13 uses
  %10 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 14 uses
  %11 = alloca %"class.std::shared_ptr", align 16 ; 10 uses
  %12 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %13 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %14 = alloca %"class.std::vector.359", align 8  ; 20 uses
  %15 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %16 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %17 = alloca %"class.std::shared_ptr", align 16 ; 4 uses
  %18 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %19 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %20 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %21 = alloca %"class.std::shared_ptr", align 16 ; 4 uses
  %22 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %23 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %24 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 10 uses
  %25 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 10 uses
  %26 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %27 = alloca %"class.std::shared_ptr", align 16 ; 4 uses
  %28 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %29 = alloca %"class.std::shared_ptr", align 16 ; 4 uses
  %30 = alloca %"class.cvc5::internal::NodeTemplate.547", align 8 ; 2 uses
  %31 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %32 = alloca %"class.std::shared_ptr", align 16 ; 4 uses
  %33 = alloca %"class.cvc5::internal::FatalStream", align 1 ; 6 uses
  %34 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %35 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %36 = alloca %"class.cvc5::internal::NodeTemplate.547", align 8 ; 2 uses
  %37 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %i.b = tail call noundef ptr @_ZNK4cvc58internal6EnvObj11nodeManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %1) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.c = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.f, !prof !28

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #23
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %bb.d unwind label %bb.e       ; 3 uses

bb.d:                                             ; preds = %bb.c
  store i64 1152920405095219200, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store ptr %i.f, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !30
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #23
  br label %.body

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.i = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !30
  store ptr %i.i, ptr %10, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.j = load ptr, ptr %2, align 8, !tbaa !32     ; 5 uses
  store ptr %i.j, ptr %12, align 8, !tbaa !32
  %i.k = load i64, ptr %i.j, align 8              ; 3 uses
  %i.l = lshr i64 %i.k, 40
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = and i32 %i.m, 1048575                    ; 3 uses
  %i.o = icmp samesign ult i32 %i.n, 1048574
  br i1 %i.o, label %bb.g, label %bb.h, !prof !53

bb.g:                                             ; preds = %bb.f
  %i.p = add nuw nsw i32 %i.n, 1
  %i.q = zext nneg i32 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 40
  %i.s = and i64 %i.k, -1152920405095219201
  %i.t = or i64 %i.r, %i.s
  store i64 %i.t, ptr %i.j, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.h:                                             ; preds = %bb.f
  %i.u = icmp eq i32 %i.n, 1048574
  br i1 %i.u, label %bb.i, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !52

bb.i:                                             ; preds = %bb.h
  %i.v = or i64 %i.k, 1152920405095219200
  store i64 %i.v, ptr %i.j, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit unwind label %bb.o

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.h, %bb.g, %bb.i
  %i.w = load ptr, ptr %5, align 8, !tbaa !26
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  invoke void %i.y(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 %12)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.z = load ptr, ptr %12, align 8, !tbaa !32    ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8             ; 3 uses
  %i.ab = and i64 %i.aa, 1152920405095219200
  %.not.i.i152 = icmp eq i64 %i.ab, 1152920405095219200
  br i1 %.not.i.i152, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.k, !prof !52

bb.k:                                             ; preds = %bb.j
  %i.ac = add i64 %i.aa, 1152920405095219200
  %i.ad = and i64 %i.ac, 1152920405095219200      ; 2 uses
  %i.ae = and i64 %i.aa, -1152920405095219201
  %i.af = or disjoint i64 %i.ad, %i.ae
  store i64 %i.af, ptr %i.z, align 8
  %i.ag = icmp eq i64 %i.ad, 0
  br i1 %i.ag, label %bb.l, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !52

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.j, %bb.k, %bb.l
  %i.aj = load ptr, ptr %11, align 16, !tbaa !252 ; 2 uses
  %.not.i153 = icmp eq ptr %i.aj, null
  br i1 %.not.i153, label %bb.n, label %bb.r

bb.n:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  invoke void @_ZN4cvc58internal9TrustNode4nullEv(ptr dead_on_unwind writable sret(%"class.cvc5::internal::TrustNode") align 8 %0)
          to label %bb.jl unwind label %bb.q

bb.o:                                             ; preds = %bb.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.kc

bb.p:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #23
  br label %bb.kc

bb.q:                                             ; preds = %bb.n
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.kb

bb.r:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  invoke void @_ZNK4cvc58internal9ProofNode5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %13, ptr noundef nonnull align 8 dereferenceable(65) %i.aj)
          to label %bb.s unwind label %bb.ag

bb.s:                                             ; preds = %bb.r
  %i.an = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ap = load <2 x ptr>, ptr %13, align 16, !tbaa !126
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !119 ; 8 uses
  store <2 x ptr> %i.ap, ptr %11, align 16, !tbaa !126
  %.not.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN4cvc58internal9ProofNodeEEaSEOS3_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 4 uses
  %i.as = load atomic i64, ptr %i.ar acquire, align 8 ; 2 uses
  %i.at = icmp eq i64 %i.as, 4294967297
  %i.au = trunc i64 %i.as to i32                  ; 2 uses
  br i1 %i.at, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.ar, align 8, !tbaa !121
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  store i32 0, ptr %i.av, align 4, !tbaa !122
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !26
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #23, !inline_history !244
  %i.az = load ptr, ptr %i.aq, align 8, !tbaa !26
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #23, !inline_history !244
  br label %_ZNSt10shared_ptrIN4cvc58internal9ProofNodeEEaSEOS3_.exit

bb.v:                                             ; preds = %bb.t
  %i.bc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i = icmp eq i8 %i.bc, 0
  br i1 %.not.i.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bd = add nsw i32 %i.au, -1
  store i32 %i.bd, ptr %i.ar, align 8, !tbaa !123
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.be = atomicrmw volatile add ptr %i.ar, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i.i = phi i32 [ %i.au, %bb.w ], [ %i.be, %bb.x ]
  %i.bf = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bf, label %bb.y, label %_ZNSt10shared_ptrIN4cvc58internal9ProofNodeEEaSEOS3_.exit, !prof !52

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #23
  br label %_ZNSt10shared_ptrIN4cvc58internal9ProofNodeEEaSEOS3_.exit

_ZNSt10shared_ptrIN4cvc58internal9ProofNodeEEaSEOS3_.exit: ; preds = %bb.s, %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.y
  %i.bg = load ptr, ptr %i.an, align 8, !tbaa !119 ; 8 uses
  %.not.i.i160 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i160, label %bb.af, label %bb.z

bb.z:                                             ; preds = %_ZNSt10shared_ptrIN4cvc58internal9ProofNodeEEaSEOS3_.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 4 uses
  %i.bi = load atomic i64, ptr %i.bh acquire, align 8 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 4294967297
  %i.bk = trunc i64 %i.bi to i32                  ; 2 uses
  br i1 %i.bj, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.bh, align 8, !tbaa !121
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  store i32 0, ptr %i.bl, align 4, !tbaa !122
  %i.bm = load ptr, ptr %i.bg, align 8, !tbaa !26
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #23, !inline_history !245
  %i.bp = load ptr, ptr %i.bg, align 8, !tbaa !26
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #23, !inline_history !245
  br label %bb.af

bb.ab:                                            ; preds = %bb.z
  %i.bs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i = icmp eq i8 %i.bs, 0
  br i1 %.not.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bt = add nsw i32 %i.bk, -1
  store i32 %i.bt, ptr %i.bh, align 8, !tbaa !123
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.bu = atomicrmw volatile add ptr %i.bh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i = phi i32 [ %i.bk, %bb.ac ], [ %i.bu, %bb.ad ]
  %i.bv = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bv, label %bb.ae, label %bb.af, !prof !52

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #23
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt10shared_ptrIN4cvc58internal9ProofNodeEEaSEOS3_.exit, %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %i.bw = load ptr, ptr %3, align 8, !tbaa !114   ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !114 ; 2 uses
  %.not530 = icmp eq ptr %i.bw, %i.by
  br i1 %.not530, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.af
  %i.bz = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %14, i64 16
  br label %bb.ah

._crit_edge:                                      ; preds = %bb.az, %bb.af
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !127, !nonnull !103, !align !104
  %i.cd = invoke noundef ptr @_ZN4cvc58internal3Env19getProofNodeManagerEv(ptr noundef nonnull align 8 dereferenceable(696) %i.cc)
          to label %bb.ba unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ag:                                            ; preds = %bb.r
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %bb.kb

bb.ah:                                            ; preds = %.lr.ph, %bb.az
  %.sroa.0511.0531 = phi ptr [ %i.bw, %.lr.ph ], [ %i.ep, %bb.az ] ; 4 uses
  %i.cf = load ptr, ptr %.sroa.0511.0531, align 8, !tbaa !57 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = and i64 %i.ch, 1023
  %i.cj = icmp eq i64 %i.ci, 21
  br i1 %i.cj, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.ck = load ptr, ptr %i.bz, align 8, !tbaa !109
  %i.cl = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef 21)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aj:                                            ; preds = %bb.ai
  %i.cm = icmp eq i32 %i.cl, 2
  %spec.select.v.i.i = select i1 %i.cm, i64 32, i64 24
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 %spec.select.v.i.i
  %i.cn = load ptr, ptr %.sroa.0511.0531, align 8, !tbaa !57 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cq = load i64, ptr %i.cp, align 8
  %i.cr = lshr i64 %i.cq, 32
  %i.cs = and i64 %i.cr, 67108863
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cs
  %i.cu = load ptr, ptr %14, align 8, !tbaa !109  ; 2 uses
  %i.cv = ptrtoint ptr %i.ck to i64
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = getelementptr inbounds i8, ptr %i.cu, i64 %i.cx
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE15_M_range_insertINS1_4expr9NodeValue8iteratorINS2_ILb0EEEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EET_SG_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr %i.cy, ptr nonnull %spec.select.i.i, ptr nonnull %i.ct)
          to label %bb.az unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ak:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.cz = load ptr, ptr %.sroa.0511.0531, align 8, !tbaa !57 ; 5 uses
  store ptr %i.cz, ptr %15, align 8, !tbaa !32
  %i.da = load i64, ptr %i.cz, align 8            ; 3 uses
  %i.db = lshr i64 %i.da, 40
  %i.dc = trunc nuw nsw i64 %i.db to i32
  %i.dd = and i32 %i.dc, 1048575                  ; 3 uses
  %i.de = icmp samesign ult i32 %i.dd, 1048574
  br i1 %i.de, label %bb.al, label %bb.am, !prof !53

bb.al:                                            ; preds = %bb.ak
  %i.df = add nuw nsw i32 %i.dd, 1
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = shl nuw nsw i64 %i.dg, 40
  %i.di = and i64 %i.da, -1152920405095219201
  %i.dj = or i64 %i.dh, %i.di
  store i64 %i.dj, ptr %i.cz, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit

bb.am:                                            ; preds = %bb.ak
  %i.dk = icmp eq i32 %i.dd, 1048574
  br i1 %i.dk, label %bb.an, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit, !prof !52

bb.an:                                            ; preds = %bb.am
  %i.dl = or i64 %i.da, 1152920405095219200
  store i64 %i.dl, ptr %i.cz, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cz)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit unwind label %bb.aw

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit: ; preds = %bb.am, %bb.al, %bb.an
  %i.dm = load ptr, ptr %i.bz, align 8, !tbaa !105 ; 3 uses
  %i.dn = load ptr, ptr %i.ca, align 8, !tbaa !107
  %.not.i.i167 = icmp eq ptr %i.dm, %i.dn
  br i1 %.not.i.i167, label %bb.as, label %bb.ao

bb.ao:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit
  %i.do = load ptr, ptr %15, align 8, !tbaa !32   ; 5 uses
  store ptr %i.do, ptr %i.dm, align 8, !tbaa !32
  %i.dp = load i64, ptr %i.do, align 8            ; 3 uses
  %i.dq = lshr i64 %i.dp, 40
  %i.dr = trunc nuw nsw i64 %i.dq to i32
  %i.ds = and i32 %i.dr, 1048575                  ; 3 uses
  %i.dt = icmp samesign ult i32 %i.ds, 1048574
  br i1 %i.dt, label %bb.ap, label %bb.aq, !prof !53

bb.ap:                                            ; preds = %bb.ao
  %i.du = add nuw nsw i32 %i.ds, 1
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = shl nuw nsw i64 %i.dv, 40
  %i.dx = and i64 %i.dp, -1152920405095219201
  %i.dy = or i64 %i.dw, %i.dx
  store i64 %i.dy, ptr %i.do, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.dz = icmp eq i32 %i.ds, 1048574
  br i1 %i.dz, label %bb.ar, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i, !prof !52

bb.ar:                                            ; preds = %bb.aq
  %i.ea = or i64 %i.dp, 1152920405095219200
  store i64 %i.ea, ptr %i.do, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.do)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i unwind label %bb.ax

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i: ; preds = %bb.ar, %bb.aq, %bb.ap
  %i.eb = load ptr, ptr %i.bz, align 8, !tbaa !105
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store ptr %i.ec, ptr %i.bz, align 8, !tbaa !105
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit

bb.as:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr %i.dm, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit unwind label %bb.ax

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i, %bb.as
  %i.ed = load ptr, ptr %15, align 8, !tbaa !32   ; 3 uses
  %i.ee = load i64, ptr %i.ed, align 8            ; 3 uses
  %i.ef = and i64 %i.ee, 1152920405095219200
  %.not.i.i170 = icmp eq i64 %i.ef, 1152920405095219200
  br i1 %.not.i.i170, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit171, label %bb.at, !prof !52

bb.at:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit
  %i.eg = add i64 %i.ee, 1152920405095219200
  %i.eh = and i64 %i.eg, 1152920405095219200      ; 2 uses
  %i.ei = and i64 %i.ee, -1152920405095219201
  %i.ej = or disjoint i64 %i.eh, %i.ei
  store i64 %i.ej, ptr %i.ed, align 8
  %i.ek = icmp eq i64 %i.eh, 0
  br i1 %i.ek, label %bb.au, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit171, !prof !52

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ed)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit171 unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.el = landingpad { ptr, i32 }
          catch ptr null
  %i.em = extractvalue { ptr, i32 } %i.el, 0
  call void @__clang_call_terminate(ptr %i.em) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit171: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backEOS3_.exit, %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %bb.az

bb.aw:                                            ; preds = %bb.an
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ax:                                            ; preds = %bb.as, %bb.ar
  %i.eo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #23
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.pn111 = phi { ptr, i32 } [ %i.eo, %bb.ax ], [ %i.en, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %.loopexit.split-lp

bb.az:                                            ; preds = %bb.aj, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit171
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.0511.0531, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ep, %i.by
  br i1 %.not, label %._crit_edge, label %bb.ah

bb.ba:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  %i.eq = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.er = load ptr, ptr %i.ao, align 8, !tbaa !119 ; 2 uses
  %i.es = load <2 x ptr>, ptr %11, align 16, !tbaa !126
  store <2 x ptr> %i.es, ptr %17, align 16, !tbaa !126
  %.not.i.i.i172 = icmp eq ptr %i.er, null
  br i1 %.not.i.i.i172, label %_ZNSt10shared_ptrIN4cvc58internal9ProofNodeEEC2ERKS3_.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 3 uses
  %i.eu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i173 = icmp eq i8 %i.eu, 0
  br i1 %.not.i.i.i.i173, label %bb.bd, label %bb.bc
end_hunk_1
begin_hunk_2_@_ZN4cvc58internal6theory2eq13ProofEqEngine18ensureProofForFactENS0_12NodeTemplateILb1EEERKSt6vectorINS4_ILb0EEESaIS7_EENS0_13TrustNodeKindEPNS0_14ProofGeneratorE:bb.a
  %i.ur = icmp eq i64 %i.uo, 0
  br i1 %i.ur, label %bb.ha, label %bb.ik, !prof !52

bb.ha:                                            ; preds = %bb.gz
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.uk)
          to label %bb.ik unwind label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.us = landingpad { ptr, i32 }
          catch ptr null
  %i.ut = extractvalue { ptr, i32 } %i.us, 0
  call void @__clang_call_terminate(ptr %i.ut) #26
  unreachable

bb.hc:                                            ; preds = %_ZNSt10shared_ptrIN4cvc58internal9ProofNodeEEC2ERKS3_.exit327
  %i.uu = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN4cvc58internal9ProofNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %29) #23
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %28) #23
  br label %bb.jk

bb.hd:                                            ; preds = %.critedge
  %i.uv = load ptr, ptr %2, align 8, !tbaa !32
  store ptr %i.uv, ptr %30, align 8, !tbaa !57
  %i.uw = load ptr, ptr %10, align 8, !tbaa !32   ; 5 uses
  store ptr %i.uw, ptr %31, align 8, !tbaa !32
  %i.ux = load i64, ptr %i.uw, align 8            ; 3 uses
  %i.uy = lshr i64 %i.ux, 40
  %i.uz = trunc nuw nsw i64 %i.uy to i32
  %i.va = and i32 %i.uz, 1048575                  ; 3 uses
  %i.vb = icmp samesign ult i32 %i.va, 1048574
  br i1 %i.vb, label %bb.he, label %bb.hf, !prof !53

bb.he:                                            ; preds = %bb.hd
  %i.vc = add nuw nsw i32 %i.va, 1
  %i.vd = zext nneg i32 %i.vc to i64
  %i.ve = shl nuw nsw i64 %i.vd, 40
  %i.vf = and i64 %i.ux, -1152920405095219201
  %i.vg = or i64 %i.ve, %i.vf
  store i64 %i.vg, ptr %i.uw, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit337

bb.hf:                                            ; preds = %bb.hd
  %i.vh = icmp eq i32 %i.va, 1048574
  br i1 %i.vh, label %bb.hg, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit337, !prof !52

bb.hg:                                            ; preds = %bb.hf
  %i.vi = or i64 %i.ux, 1152920405095219200
  store i64 %i.vi, ptr %i.uw, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.uw)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit337 unwind label %bb.jb

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit337: ; preds = %bb.hf, %bb.he, %bb.hg
  %i.vj = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.vk = load ptr, ptr %i.fm, align 8, !tbaa !119 ; 2 uses
  %i.vl = load <2 x ptr>, ptr %9, align 16, !tbaa !126
  store <2 x ptr> %i.vl, ptr %32, align 16, !tbaa !126
  %.not.i.i.i338 = icmp eq ptr %i.vk, null
  br i1 %.not.i.i.i338, label %_ZNSt10shared_ptrIN4cvc58internal9ProofNodeEEC2ERKS3_.exit340, label %bb.hh

bb.hh:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit337
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vk, i64 8 ; 3 uses
  %i.vn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i339 = icmp eq i8 %i.vn, 0
  br i1 %.not.i.i.i.i339, label %bb.hj, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.vo = load i32, ptr %i.vm, align 4, !tbaa !123
  %i.vp = add nsw i32 %i.vo, 1
  store i32 %i.vp, ptr %i.vm, align 4, !tbaa !123
  br label %_ZNSt10shared_ptrIN4cvc58internal9ProofNodeEEC2ERKS3_.exit340

bb.hj:                                            ; preds = %bb.hh
  %i.vq = atomicrmw volatile add ptr %i.vm, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN4cvc58internal9ProofNodeEEC2ERKS3_.exit340

_ZNSt10shared_ptrIN4cvc58internal9ProofNodeEEC2ERKS3_.exit340: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit337, %bb.hi, %bb.hj
  invoke void @_ZN4cvc58internal19EagerProofGenerator18setProofForPropExpENS0_12NodeTemplateILb0EEENS2_ILb1EEESt10shared_ptrINS0_9ProofNodeEE(ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef nonnull align 8 %30, ptr noundef nonnull align 8 %31, ptr noundef nonnull align 8 %32)
          to label %bb.hk unwind label %bb.hu

bb.hk:                                            ; preds = %_ZNSt10shared_ptrIN4cvc58internal9ProofNodeEEC2ERKS3_.exit340
  %i.vr = load ptr, ptr %i.vj, align 8, !tbaa !119 ; 8 uses
  %.not.i.i341 = icmp eq ptr %i.vr, null
  br i1 %.not.i.i341, label %_ZNSt12__shared_ptrIN4cvc58internal9ProofNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit345, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 8 ; 4 uses
  %i.vt = load atomic i64, ptr %i.vs acquire, align 8 ; 2 uses
  %i.vu = icmp eq i64 %i.vt, 4294967297
  %i.vv = trunc i64 %i.vt to i32                  ; 2 uses
  br i1 %i.vu, label %bb.hm, label %bb.hn

bb.hm:                                            ; preds = %bb.hl
  store i32 0, ptr %i.vs, align 8, !tbaa !121
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vr, i64 12
  store i32 0, ptr %i.vw, align 4, !tbaa !122
  %i.vx = load ptr, ptr %i.vr, align 8, !tbaa !26
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 16
  %i.vz = load ptr, ptr %i.vy, align 8
  call void %i.vz(ptr noundef nonnull align 8 dereferenceable(16) %i.vr) #23, !inline_history !245
  %i.wa = load ptr, ptr %i.vr, align 8, !tbaa !26
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 24
  %i.wc = load ptr, ptr %i.wb, align 8
  call void %i.wc(ptr noundef nonnull align 8 dereferenceable(16) %i.vr) #23, !inline_history !245
  br label %_ZNSt12__shared_ptrIN4cvc58internal9ProofNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit345

bb.hn:                                            ; preds = %bb.hl
  %i.wd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i342 = icmp eq i8 %i.wd, 0
  br i1 %.not.i.i.i342, label %bb.hp, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.we = add nsw i32 %i.vv, -1
  store i32 %i.we, ptr %i.vs, align 8, !tbaa !123
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i343

bb.hp:                                            ; preds = %bb.hn
  %i.wf = atomicrmw volatile add ptr %i.vs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i343

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i343: ; preds = %bb.hp, %bb.ho
  %.0.i.i.i.i344 = phi i32 [ %i.vv, %bb.ho ], [ %i.wf, %bb.hp ]
  %i.wg = icmp eq i32 %.0.i.i.i.i344, 1
  br i1 %i.wg, label %bb.hq, label %_ZNSt12__shared_ptrIN4cvc58internal9ProofNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit345, !prof !52

bb.hq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i343
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.vr) #23
  br label %_ZNSt12__shared_ptrIN4cvc58internal9ProofNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit345

_ZNSt12__shared_ptrIN4cvc58internal9ProofNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit345: ; preds = %bb.hk, %bb.hm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i343, %bb.hq
  %i.wh = load ptr, ptr %31, align 8, !tbaa !32   ; 3 uses
  %i.wi = load i64, ptr %i.wh, align 8            ; 3 uses
  %i.wj = and i64 %i.wi, 1152920405095219200
  %.not.i.i346 = icmp eq i64 %i.wj, 1152920405095219200
  br i1 %.not.i.i346, label %bb.it, label %bb.hr, !prof !52

bb.hr:                                            ; preds = %_ZNSt12__shared_ptrIN4cvc58internal9ProofNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit345
  %i.wk = add i64 %i.wi, 1152920405095219200
  %i.wl = and i64 %i.wk, 1152920405095219200      ; 2 uses
  %i.wm = and i64 %i.wi, -1152920405095219201
  %i.wn = or disjoint i64 %i.wl, %i.wm
  store i64 %i.wn, ptr %i.wh, align 8
  %i.wo = icmp eq i64 %i.wl, 0
  br i1 %i.wo, label %bb.hs, label %bb.it, !prof !52

bb.hs:                                            ; preds = %bb.hr
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.wh)
          to label %bb.it unwind label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.wp = landingpad { ptr, i32 }
          catch ptr null
  %i.wq = extractvalue { ptr, i32 } %i.wp, 0
  call void @__clang_call_terminate(ptr %i.wq) #26
  unreachable

bb.hu:                                            ; preds = %_ZNSt10shared_ptrIN4cvc58internal9ProofNodeEEC2ERKS3_.exit340
  %i.wr = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN4cvc58internal9ProofNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %32) #23
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %31) #23
  br label %bb.jk

bb.hv:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #23
  invoke void @_ZN4cvc58internal11FatalStreamC1EPKcS3_i(ptr noundef nonnull align 1 dereferenceable(1) %33, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4cvc58internal6theory2eq13ProofEqEngine18ensureProofForFactENS0_12NodeTemplateILb1EEERKSt6vectorINS4_ILb0EEESaIS7_EENS0_13TrustNodeKindEPNS0_14ProofGeneratorE, ptr noundef nonnull @.str.2, i32 noundef 433)
          to label %bb.hw unwind label %bb.hz

bb.hw:                                            ; preds = %bb.hv
  %i.ws = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal11FatalStream6streamEv(ptr noundef nonnull align 1 dereferenceable(1) %33)
          to label %bb.hx unwind label %bb.ia     ; 3 uses

bb.hx:                                            ; preds = %bb.hw
  %i.wt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ws, ptr noundef nonnull @.str.32, i64 noundef 27)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.ia ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.hx
  %i.wu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ws, ptr noundef nonnull @.str.33, i64 noundef 26)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit351 unwind label %bb.ia ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit351: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.wv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internallsERSoNS0_13TrustNodeKindE(ptr noundef nonnull align 8 dereferenceable(8) %i.ws, i32 noundef %4)
          to label %bb.hy unwind label %bb.ia     ; 0 uses

bb.hy:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit351
  call void @_ZN4cvc58internal11FatalStreamD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %33) #26
  unreachable

bb.hz:                                            ; preds = %bb.hv
  %i.ww = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23
  br label %bb.jk

bb.ia:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.hx, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit351, %bb.hw
  %i.wx = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4cvc58internal11FatalStreamD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %33) #26
  unreachable

bb.ib:                                            ; preds = %bb.gi, %bb.gh, %_ZNSt12__shared_ptrIN4cvc58internal9ProofNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit319
  %i.wy = load ptr, ptr %24, align 8, !tbaa !32   ; 5 uses
  store ptr %i.wy, ptr %34, align 8, !tbaa !32
  %i.wz = load i64, ptr %i.wy, align 8            ; 3 uses
  %i.xa = lshr i64 %i.wz, 40
  %i.xb = trunc nuw nsw i64 %i.xa to i32
  %i.xc = and i32 %i.xb, 1048575                  ; 3 uses
  %i.xd = icmp samesign ult i32 %i.xc, 1048574
  br i1 %i.xd, label %bb.ic, label %bb.id, !prof !53

bb.ic:                                            ; preds = %bb.ib
  %i.xe = add nuw nsw i32 %i.xc, 1
  %i.xf = zext nneg i32 %i.xe to i64
  %i.xg = shl nuw nsw i64 %i.xf, 40
  %i.xh = and i64 %i.wz, -1152920405095219201
  %i.xi = or i64 %i.xg, %i.xh
  store i64 %i.xi, ptr %i.wy, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit359

bb.id:                                            ; preds = %bb.ib
  %i.xj = icmp eq i32 %i.xc, 1048574
  br i1 %i.xj, label %bb.ie, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit359, !prof !52

bb.ie:                                            ; preds = %bb.id
  %i.xk = or i64 %i.wz, 1152920405095219200
  store i64 %i.xk, ptr %i.wy, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.wy)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit359 unwind label %bb.jb

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit359: ; preds = %bb.id, %bb.ic, %bb.ie
  invoke void @_ZN4cvc58internal9TrustNode15mkTrustConflictENS0_12NodeTemplateILb1EEEPNS0_14ProofGeneratorE(ptr dead_on_unwind writable sret(%"class.cvc5::internal::TrustNode") align 8 %0, ptr noundef nonnull align 8 %34, ptr noundef nonnull %i.re)
          to label %bb.if unwind label %bb.ij

bb.if:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit359
  %i.xl = load ptr, ptr %34, align 8, !tbaa !32   ; 3 uses
  %i.xm = load i64, ptr %i.xl, align 8            ; 3 uses
  %i.xn = and i64 %i.xm, 1152920405095219200
  %.not.i.i360 = icmp eq i64 %i.xn, 1152920405095219200
  br i1 %.not.i.i360, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit362, label %bb.ig, !prof !52

bb.ig:                                            ; preds = %bb.if
  %i.xo = add i64 %i.xm, 1152920405095219200
  %i.xp = and i64 %i.xo, 1152920405095219200      ; 2 uses
  %i.xq = and i64 %i.xm, -1152920405095219201
  %i.xr = or disjoint i64 %i.xp, %i.xq
  store i64 %i.xr, ptr %i.xl, align 8
  %i.xs = icmp eq i64 %i.xp, 0
  br i1 %i.xs, label %bb.ih, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit362, !prof !52

bb.ih:                                            ; preds = %bb.ig
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.xl)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit362 unwind label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.xt = landingpad { ptr, i32 }
          catch ptr null
  %i.xu = extractvalue { ptr, i32 } %i.xt, 0
  call void @__clang_call_terminate(ptr %i.xu) #26
  unreachable

bb.ij:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit359
  %i.xv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %34) #23
  br label %bb.jk

bb.ik:                                            ; preds = %bb.ha, %bb.gz, %_ZNSt12__shared_ptrIN4cvc58internal9ProofNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit332
  %i.xw = load ptr, ptr %24, align 8, !tbaa !32   ; 5 uses
  store ptr %i.xw, ptr %35, align 8, !tbaa !32
  %i.xx = load i64, ptr %i.xw, align 8            ; 3 uses
  %i.xy = lshr i64 %i.xx, 40
  %i.xz = trunc nuw nsw i64 %i.xy to i32
  %i.ya = and i32 %i.xz, 1048575                  ; 3 uses
  %i.yb = icmp samesign ult i32 %i.ya, 1048574
  br i1 %i.yb, label %bb.il, label %bb.im, !prof !53

bb.il:                                            ; preds = %bb.ik
  %i.yc = add nuw nsw i32 %i.ya, 1
  %i.yd = zext nneg i32 %i.yc to i64
  %i.ye = shl nuw nsw i64 %i.yd, 40
  %i.yf = and i64 %i.xx, -1152920405095219201
  %i.yg = or i64 %i.ye, %i.yf
  store i64 %i.yg, ptr %i.xw, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit364

bb.im:                                            ; preds = %bb.ik
  %i.yh = icmp eq i32 %i.ya, 1048574
  br i1 %i.yh, label %bb.in, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit364, !prof !52

bb.in:                                            ; preds = %bb.im
  %i.yi = or i64 %i.xx, 1152920405095219200
  store i64 %i.yi, ptr %i.xw, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.xw)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit364 unwind label %bb.jb

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit364: ; preds = %bb.im, %bb.il, %bb.in
  invoke void @_ZN4cvc58internal9TrustNode12mkTrustLemmaENS0_12NodeTemplateILb1EEEPNS0_14ProofGeneratorE(ptr dead_on_unwind writable sret(%"class.cvc5::internal::TrustNode") align 8 %0, ptr noundef nonnull align 8 %35, ptr noundef nonnull %i.ra)
          to label %bb.io unwind label %bb.is

bb.io:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit364
  %i.yj = load ptr, ptr %35, align 8, !tbaa !32   ; 3 uses
  %i.yk = load i64, ptr %i.yj, align 8            ; 3 uses
  %i.yl = and i64 %i.yk, 1152920405095219200
  %.not.i.i365 = icmp eq i64 %i.yl, 1152920405095219200
  br i1 %.not.i.i365, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit362, label %bb.ip, !prof !52

bb.ip:                                            ; preds = %bb.io
  %i.ym = add i64 %i.yk, 1152920405095219200
  %i.yn = and i64 %i.ym, 1152920405095219200      ; 2 uses
  %i.yo = and i64 %i.yk, -1152920405095219201
  %i.yp = or disjoint i64 %i.yn, %i.yo
  store i64 %i.yp, ptr %i.yj, align 8
  %i.yq = icmp eq i64 %i.yn, 0
  br i1 %i.yq, label %bb.iq, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit362, !prof !52

bb.iq:                                            ; preds = %bb.ip
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.yj)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit362 unwind label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.yr = landingpad { ptr, i32 }
          catch ptr null
  %i.ys = extractvalue { ptr, i32 } %i.yr, 0
  call void @__clang_call_terminate(ptr %i.ys) #26
  unreachable

bb.is:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit364
  %i.yt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %35) #23
  br label %bb.jk

bb.it:                                            ; preds = %_ZNSt12__shared_ptrIN4cvc58internal9ProofNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit345, %bb.hr, %bb.hs
  %i.yu = load ptr, ptr %2, align 8, !tbaa !32
  store ptr %i.yu, ptr %36, align 8, !tbaa !57
  %i.yv = load ptr, ptr %10, align 8, !tbaa !32   ; 5 uses
  store ptr %i.yv, ptr %37, align 8, !tbaa !32
  %i.yw = load i64, ptr %i.yv, align 8            ; 3 uses
  %i.yx = lshr i64 %i.yw, 40
  %i.yy = trunc nuw nsw i64 %i.yx to i32
  %i.yz = and i32 %i.yy, 1048575                  ; 3 uses
  %i.za = icmp samesign ult i32 %i.yz, 1048574
  br i1 %i.za, label %bb.iu, label %bb.iv, !prof !53

bb.iu:                                            ; preds = %bb.it
  %i.zb = add nuw nsw i32 %i.yz, 1
  %i.zc = zext nneg i32 %i.zb to i64
  %i.zd = shl nuw nsw i64 %i.zc, 40
  %i.ze = and i64 %i.yw, -1152920405095219201
  %i.zf = or i64 %i.zd, %i.ze
  store i64 %i.zf, ptr %i.yv, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit369

bb.iv:                                            ; preds = %bb.it
  %i.zg = icmp eq i32 %i.yz, 1048574
  br i1 %i.zg, label %bb.iw, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit369, !prof !52

bb.iw:                                            ; preds = %bb.iv
  %i.zh = or i64 %i.yw, 1152920405095219200
  store i64 %i.zh, ptr %i.yv, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.yv)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit369 unwind label %bb.jb

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit369: ; preds = %bb.iv, %bb.iu, %bb.iw
  invoke void @_ZN4cvc58internal9TrustNode14mkTrustPropExpENS0_12NodeTemplateILb0EEENS2_ILb1EEEPNS0_14ProofGeneratorE(ptr dead_on_unwind writable sret(%"class.cvc5::internal::TrustNode") align 8 %0, ptr noundef nonnull align 8 %36, ptr noundef nonnull align 8 %37, ptr noundef nonnull %i.ra)
          to label %bb.ix unwind label %bb.jc

bb.ix:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit369
  %i.zi = load ptr, ptr %37, align 8, !tbaa !32   ; 3 uses
  %i.zj = load i64, ptr %i.zi, align 8            ; 3 uses
  %i.zk = and i64 %i.zj, 1152920405095219200
  %.not.i.i370 = icmp eq i64 %i.zk, 1152920405095219200
  br i1 %.not.i.i370, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit362, label %bb.iy, !prof !52

bb.iy:                                            ; preds = %bb.ix
  %i.zl = add i64 %i.zj, 1152920405095219200
  %i.zm = and i64 %i.zl, 1152920405095219200      ; 2 uses
  %i.zn = and i64 %i.zj, -1152920405095219201
  %i.zo = or disjoint i64 %i.zm, %i.zn
  store i64 %i.zo, ptr %i.zi, align 8
  %i.zp = icmp eq i64 %i.zm, 0
  br i1 %i.zp, label %bb.iz, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit362, !prof !52

bb.iz:                                            ; preds = %bb.iy
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.zi)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit362 unwind label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.zq = landingpad { ptr, i32 }
          catch ptr null
  %i.zr = extractvalue { ptr, i32 } %i.zq, 0
  call void @__clang_call_terminate(ptr %i.zr) #26
  unreachable

bb.jb:                                            ; preds = %bb.hg, %bb.er, %bb.eu, %bb.fw, %bb.go, %bb.ie, %bb.in, %bb.iw
  %i.zs = landingpad { ptr, i32 }
          cleanup
  br label %bb.jk

bb.jc:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit369
  %i.zt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %37) #23
  br label %bb.jk

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit362: ; preds = %bb.iz, %bb.iy, %bb.ix, %bb.iq, %bb.ip, %bb.io, %bb.ih, %bb.ig, %bb.if
  %i.zu = load ptr, ptr %24, align 8, !tbaa !32   ; 3 uses
  %i.zv = load i64, ptr %i.zu, align 8            ; 3 uses
  %i.zw = and i64 %i.zv, 1152920405095219200
  %.not.i.i377 = icmp eq i64 %i.zw, 1152920405095219200
  br i1 %.not.i.i377, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit379, label %bb.jd, !prof !52

bb.jd:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit362
  %i.zx = add i64 %i.zv, 1152920405095219200
  %i.zy = and i64 %i.zx, 1152920405095219200      ; 2 uses
  %i.zz = and i64 %i.zv, -1152920405095219201
  %i.aaa = or disjoint i64 %i.zy, %i.zz
  store i64 %i.aaa, ptr %i.zu, align 8
  %i.aab = icmp eq i64 %i.zy, 0
  br i1 %i.aab, label %bb.je, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit379, !prof !52

bb.je:                                            ; preds = %bb.jd
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.zu)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit379 unwind label %bb.jf

bb.jf:                                            ; preds = %bb.je
  %i.aac = landingpad { ptr, i32 }
          catch ptr null
  %i.aad = extractvalue { ptr, i32 } %i.aac, 0
  call void @__clang_call_terminate(ptr %i.aad) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit379: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit362, %bb.jd, %bb.je
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  %i.aae = load ptr, ptr %14, align 8, !tbaa !106 ; 3 uses
  %i.aaf = load ptr, ptr %i.hv, align 8, !tbaa !105 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.aae, %i.aaf
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit379, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.aaq, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i ], [ %i.aae, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit379 ] ; 2 uses
  %i.aag = load ptr, ptr %.05.i.i.i, align 8, !tbaa !32 ; 3 uses
  %i.aah = load i64, ptr %i.aag, align 8          ; 3 uses
  %i.aai = and i64 %i.aah, 1152920405095219200
  %.not.i.i.i.i.i.i = icmp eq i64 %i.aai, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, label %bb.jg, !prof !52

bb.jg:                                            ; preds = %.lr.ph.i.i.i
  %i.aaj = add i64 %i.aah, 1152920405095219200
  %i.aak = and i64 %i.aaj, 1152920405095219200    ; 2 uses
  %i.aal = and i64 %i.aah, -1152920405095219201
  %i.aam = or disjoint i64 %i.aak, %i.aal
  store i64 %i.aam, ptr %i.aag, align 8
  %i.aan = icmp eq i64 %i.aak, 0
  br i1 %i.aan, label %bb.jh, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, !prof !52

bb.jh:                                            ; preds = %bb.jg
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aag)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i unwind label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  %i.aao = landingpad { ptr, i32 }
          catch ptr null
  %i.aap = extractvalue { ptr, i32 } %i.aao, 0
  call void @__clang_call_terminate(ptr %i.aap) #26
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i: ; preds = %bb.jh, %bb.jg, %.lr.ph.i.i.i
  %i.aaq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i380 = icmp eq ptr %i.aaq, %i.aaf
  br i1 %.not.i.i.i380, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %14, align 8, !tbaa !106
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit379
  %i.aar = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.aae, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit379 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.aar, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, label %bb.jj

bb.jj:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i
  %i.aas = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.aat = load ptr, ptr %i.aas, align 8, !tbaa !107
  %i.aau = ptrtoint ptr %i.aat to i64
  %i.aav = ptrtoint ptr %i.aar to i64
  %i.aaw = sub i64 %i.aau, %i.aav
  call void @_ZdlPvm(ptr noundef nonnull %i.aar, i64 noundef %i.aaw) #24
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, %bb.jj
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.jl

bb.jk:                                            ; preds = %bb.jb, %bb.jc, %bb.hu, %bb.is, %bb.ij, %bb.hz, %bb.hc, %bb.gk, %.critedge122
  %.pn107 = phi { ptr, i32 } [ %i.ww, %bb.hz ], [ %i.zs, %bb.jb ], [ %i.xv, %bb.ij ], [ %i.zt, %bb.jc ], [ %i.yt, %bb.is ], [ %i.wr, %bb.hu ], [ %.pn91.pn, %.critedge122 ], [ %i.sz, %bb.gk ], [ %i.uu, %bb.hc ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #23
  br label %.body229

.body229:                                         ; preds = %bb.em, %bb.jk
  %.pn107.pn = phi { ptr, i32 } [ %.pn107, %bb.jk ], [ %i.nu, %bb.em ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ay, %bb.dr, %bb.du, %bb.dx, %bb.ex, %.body229
  %.pn113.pn = phi { ptr, i32 } [ %.pn111, %bb.ay ], [ %.pn107.pn, %.body229 ], [ %.pn89, %bb.ex ], [ %.pn87, %bb.dx ], [ %.pn85, %bb.du ], [ %.pn, %bb.dr ], [ %lpad.loopexit.split-lp601, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.kb

bb.jl:                                            ; preds = %bb.n, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit
  %i.aax = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.aay = load ptr, ptr %i.aax, align 8, !tbaa !119 ; 8 uses
  %.not.i.i381 = icmp eq ptr %i.aay, null
  br i1 %.not.i.i381, label %_ZNSt12__shared_ptrIN4cvc58internal9ProofNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit385, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aay, i64 8 ; 4 uses
  %i.aba = load atomic i64, ptr %i.aaz acquire, align 8 ; 2 uses
  %i.abb = icmp eq i64 %i.aba, 4294967297
  %i.abc = trunc i64 %i.aba to i32                ; 2 uses
  br i1 %i.abb, label %bb.jn, label %bb.jo

bb.jn:                                            ; preds = %bb.jm
  store i32 0, ptr %i.aaz, align 8, !tbaa !121
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aay, i64 12
  store i32 0, ptr %i.abd, align 4, !tbaa !122
  %i.abe = load ptr, ptr %i.aay, align 8, !tbaa !26
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 16
  %i.abg = load ptr, ptr %i.abf, align 8
  call void %i.abg(ptr noundef nonnull align 8 dereferenceable(16) %i.aay) #23, !inline_history !245
  %i.abh = load ptr, ptr %i.aay, align 8, !tbaa !26
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abh, i64 24
  %i.abj = load ptr, ptr %i.abi, align 8
  call void %i.abj(ptr noundef nonnull align 8 dereferenceable(16) %i.aay) #23, !inline_history !245
  br label %_ZNSt12__shared_ptrIN4cvc58internal9ProofNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit385

bb.jo:                                            ; preds = %bb.jm
  %i.abk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i382 = icmp eq i8 %i.abk, 0
  br i1 %.not.i.i.i382, label %bb.jq, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.abl = add nsw i32 %i.abc, -1
  store i32 %i.abl, ptr %i.aaz, align 8, !tbaa !123
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i383

bb.jq:                                            ; preds = %bb.jo
  %i.abm = atomicrmw volatile add ptr %i.aaz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i383

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i383: ; preds = %bb.jq, %bb.jp
  %.0.i.i.i.i384 = phi i32 [ %i.abc, %bb.jp ], [ %i.abm, %bb.jq ]
  %i.abn = icmp eq i32 %.0.i.i.i.i384, 1
  br i1 %i.abn, label %bb.jr, label %_ZNSt12__shared_ptrIN4cvc58internal9ProofNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit385, !prof !52

bb.jr:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i383
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aay) #23
  br label %_ZNSt12__shared_ptrIN4cvc58internal9ProofNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit385

_ZNSt12__shared_ptrIN4cvc58internal9ProofNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit385: ; preds = %bb.jl, %bb.jn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i383, %bb.jr
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.abo = load ptr, ptr %10, align 8, !tbaa !32  ; 3 uses
  %i.abp = load i64, ptr %i.abo, align 8          ; 3 uses
  %i.abq = and i64 %i.abp, 1152920405095219200
  %.not.i.i386 = icmp eq i64 %i.abq, 1152920405095219200
  br i1 %.not.i.i386, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit388, label %bb.js, !prof !52

bb.js:                                            ; preds = %_ZNSt12__shared_ptrIN4cvc58internal9ProofNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit385
  %i.abr = add i64 %i.abp, 1152920405095219200
  %i.abs = and i64 %i.abr, 1152920405095219200    ; 2 uses
  %i.abt = and i64 %i.abp, -1152920405095219201
  %i.abu = or disjoint i64 %i.abs, %i.abt
  store i64 %i.abu, ptr %i.abo, align 8
  %i.abv = icmp eq i64 %i.abs, 0
  br i1 %i.abv, label %bb.jt, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit388, !prof !52

bb.jt:                                            ; preds = %bb.js
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.abo)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit388 unwind label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.abw = landingpad { ptr, i32 }
          catch ptr null
  %i.abx = extractvalue { ptr, i32 } %i.abw, 0
  call void @__clang_call_terminate(ptr %i.abx) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit388: ; preds = %_ZNSt12__shared_ptrIN4cvc58internal9ProofNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit385, %bb.js, %bb.jt
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.aby = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.abz = load ptr, ptr %i.aby, align 8, !tbaa !119 ; 8 uses
  %.not.i.i389 = icmp eq ptr %i.abz, null
  br i1 %.not.i.i389, label %_ZNSt12__shared_ptrIN4cvc58internal9ProofNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit393, label %bb.jv

bb.jv:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit388
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abz, i64 8 ; 4 uses
  %i.acb = load atomic i64, ptr %i.aca acquire, align 8 ; 2 uses
  %i.acc = icmp eq i64 %i.acb, 4294967297
  %i.acd = trunc i64 %i.acb to i32                ; 2 uses
  br i1 %i.acc, label %bb.jw, label %bb.jx

bb.jw:                                            ; preds = %bb.jv
  store i32 0, ptr %i.aca, align 8, !tbaa !121
  %i.ace = getelementptr inbounds nuw i8, ptr %i.abz, i64 12
  store i32 0, ptr %i.ace, align 4, !tbaa !122
  %i.acf = load ptr, ptr %i.abz, align 8, !tbaa !26
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 16
  %i.ach = load ptr, ptr %i.acg, align 8
  call void %i.ach(ptr noundef nonnull align 8 dereferenceable(16) %i.abz) #23, !inline_history !245
  %i.aci = load ptr, ptr %i.abz, align 8, !tbaa !26
  %i.acj = getelementptr inbounds nuw i8, ptr %i.aci, i64 24
  %i.ack = load ptr, ptr %i.acj, align 8
  call void %i.ack(ptr noundef nonnull align 8 dereferenceable(16) %i.abz) #23, !inline_history !245
  br label %_ZNSt12__shared_ptrIN4cvc58internal9ProofNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit393

bb.jx:                                            ; preds = %bb.jv
  %i.acl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i390 = icmp eq i8 %i.acl, 0
  br i1 %.not.i.i.i390, label %bb.jz, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.acm = add nsw i32 %i.acd, -1
  store i32 %i.acm, ptr %i.aca, align 8, !tbaa !123
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i391

bb.jz:                                            ; preds = %bb.jx
  %i.acn = atomicrmw volatile add ptr %i.aca, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i391

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i391: ; preds = %bb.jz, %bb.jy
  %.0.i.i.i.i392 = phi i32 [ %i.acd, %bb.jy ], [ %i.acn, %bb.jz ]
  %i.aco = icmp eq i32 %.0.i.i.i.i392, 1
  br i1 %i.aco, label %bb.ka, label %_ZNSt12__shared_ptrIN4cvc58internal9ProofNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit393, !prof !52

bb.ka:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i391
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.abz) #23
  br label %_ZNSt12__shared_ptrIN4cvc58internal9ProofNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit393

_ZNSt12__shared_ptrIN4cvc58internal9ProofNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit393: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit388, %bb.jw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i391, %bb.ka
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  ret void

bb.kb:                                            ; preds = %.loopexit.split-lp, %bb.ag, %bb.q
  %.pn116 = phi { ptr, i32 } [ %i.am, %bb.q ], [ %i.ce, %bb.ag ], [ %.pn113.pn, %.loopexit.split-lp ]
  call void @_ZNSt12__shared_ptrIN4cvc58internal9ProofNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #23
  br label %bb.kc

bb.kc:                                            ; preds = %bb.o, %bb.p, %bb.kb
  %.pn116.pn = phi { ptr, i32 } [ %.pn116, %bb.kb ], [ %i.al, %bb.p ], [ %i.ak, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #23
  br label %.body

.body:                                            ; preds = %bb.e, %bb.kc
  %.pn116.pn.pn.pn = phi { ptr, i32 } [ %.pn116.pn, %bb.kc ], [ %i.h, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @_ZNSt12__shared_ptrIN4cvc58internal9ProofNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  resume { ptr, i32 } %.pn116.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory2eq13ProofEqEngine14assertConflictENS_9ProofRuleERKSt6vectorINS0_12NodeTemplateILb1EEESaIS7_EESB_(ptr dead_on_unwind noalias writable sret(%"class.cvc5::internal::TrustNode") align 8 %0, ptr noundef nonnull align 8 dereferenceable(976) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 3 uses
  %6 = alloca %"class.std::vector.359", align 8   ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 504
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 8 uses
  store ptr %i.b, ptr %5, align 8, !tbaa !32
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = lshr i64 %i.c, 40
  %i.e = trunc nuw nsw i64 %i.d to i32
  %i.f = and i32 %i.e, 1048575                    ; 3 uses
  %i.g = icmp samesign ult i32 %i.f, 1048574
  br i1 %i.g, label %bb.b, label %bb.c, !prof !53

bb.b:                                             ; preds = %bb.a
  %i.h = add nuw nsw i32 %i.f, 1
  %i.i = zext nneg i32 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 40
  %i.k = and i64 %i.c, -1152920405095219201
  %i.l = or i64 %i.j, %i.k
  store i64 %i.l, ptr %i.b, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.m = icmp eq i32 %i.f, 1048574
  br i1 %i.m, label %bb.d, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !52

bb.d:                                             ; preds = %bb.c
  %i.n = or i64 %i.c, 1152920405095219200
  store i64 %i.n, ptr %i.b, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN4cvc58internal6theory2eq13ProofEqEngine11assertLemmaENS0_12NodeTemplateILb1EEENS_9ProofRuleERKSt6vectorIS5_SaIS5_EESB_SB_(ptr dead_on_unwind writable sret(%"class.cvc5::internal::TrustNode") align 8 %0, ptr noundef nonnull align 8 dereferenceable(976) %1, ptr noundef nonnull align 8 %5, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit unwind label %bb.h

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %.pre = load i64, ptr %i.b, align 8             ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.o = and i64 %.pre, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.o, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.e, !prof !52

bb.e:                                             ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit
  %i.p = add i64 %.pre, 1152920405095219200
  %i.q = and i64 %i.p, 1152920405095219200        ; 2 uses
  %i.r = and i64 %.pre, -1152920405095219201
  %i.s = or disjoint i64 %i.q, %i.r
  store i64 %i.s, ptr %i.b, align 8
  %i.t = icmp eq i64 %i.q, 0
  br i1 %i.t, label %bb.f, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !52

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, %bb.e, %bb.f
  ret void

bb.h:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #23
  resume { ptr, i32 } %i.w
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory2eq13ProofEqEngine11assertLemmaENS0_12NodeTemplateILb1EEENS_9ProofRuleERKSt6vectorIS5_SaIS5_EESB_SB_(ptr dead_on_unwind noalias writable sret(%"class.cvc5::internal::TrustNode") align 8 %0, ptr noundef nonnull align 8 dereferenceable(976) %1, ptr nofree noundef readonly align 8 captures(none) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %7 = alloca %"class.cvc5::internal::LazyCDProof", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %9 = alloca %"class.std::vector.567", align 8   ; 10 uses
  %10 = alloca %"class.cvc5::internal::LazyCDProof", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %13 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !127, !nonnull !103, !align !104
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 512
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.e, ptr %8, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.e, ptr noundef nonnull align 1 dereferenceable(11) @.str.18, i64 11, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 11, ptr %i.f, align 8, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 27
  store i8 0, ptr %i.g, align 1, !tbaa !24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 528
  invoke void @_ZN4cvc58internal11LazyCDProofC1ERNS0_3EnvEPNS0_14ProofGeneratorEPNS_7context7ContextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb(ptr noundef nonnull align 8 dereferenceable(408) %7, ptr noundef nonnull align 8 dereferenceable(696) %i.c, ptr noundef nonnull %i.h, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(32) %8, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %bb.a unwind label %bb.c

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.i = load ptr, ptr %8, align 8, !tbaa !22     ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.e
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.e, align 8, !tbaa !24
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 504
  %i.n = load ptr, ptr %2, align 8, !tbaa !32
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !32
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.b, label %bb.d

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.q = load ptr, ptr %5, align 8, !tbaa !109
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !109
  %i.t = icmp eq ptr %i.q, %i.s
  br i1 %i.t, label %bb.e, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %8, align 8, !tbaa !22     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.e
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %bb.c
  %i.x = load i64, ptr %i.e, align 8, !tbaa !24
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.ag

bb.d:                                             ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %storemerge = phi i32 [ 1, %bb.d ], [ 0, %bb.b ]
  %.0 = phi ptr [ %7, %bb.d ], [ %i.d, %bb.b ]    ; 2 uses
  store i32 %storemerge, ptr %i.a, align 4, !tbaa !132
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  invoke void @_ZN4cvc58internal6theory2eq13ProofEqEngine19explainVecWithProofERNS0_13TrustNodeKindERSt6vectorINS0_12NodeTemplateILb0EEESaIS8_EERKS6_INS7_ILb1EEESaISC_EESG_PNS0_11LazyCDProofE(ptr noundef nonnull align 8 dereferenceable(976) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %.0)
          to label %._crit_edge.i.i64 unwind label %bb.o

._crit_edge.i.i64:                                ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !127, !nonnull !103, !align !104
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.aa, ptr %11, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.aa, ptr noundef nonnull align 1 dereferenceable(11) @.str.18, i64 11, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 11, ptr %i.ab, align 8, !tbaa !23
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 27
  store i8 0, ptr %i.ac, align 1, !tbaa !24
  %i.ad = getelementptr inbounds nuw i8, ptr %.0, i64 16
  invoke void @_ZN4cvc58internal11LazyCDProofC1ERNS0_3EnvEPNS0_14ProofGeneratorEPNS_7context7ContextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb(ptr noundef nonnull align 8 dereferenceable(408) %10, ptr noundef nonnull align 8 dereferenceable(696) %i.z, ptr noundef nonnull %i.ad, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(32) %11, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %bb.f unwind label %bb.p

bb.f:                                             ; preds = %._crit_edge.i.i64
  %i.ae = load ptr, ptr %11, align 8, !tbaa !22   ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.aa
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.f
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !24
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
end_hunk_2
