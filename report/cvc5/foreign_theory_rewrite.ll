Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/foreign_theory_rewrite?download=true
inline.NumInlined: 718
inline.NumDeleted: 347
begin_hunk_0_@_ZN4cvc58internal13preprocessing6passes20ForeignTheoryRewrite13applyInternalEPNS1_17AssertionPipelineE:bb.a
bb.b:                                             ; preds = %.lr.ph, %bb.z
  %.02234 = phi i64 [ 0, %.lr.ph ], [ %i.bv, %bb.z ] ; 4 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !67
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.02234 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !36   ; 5 uses
  store ptr %i.m, ptr %3, align 8, !tbaa !36
  %i.n = load i64, ptr %i.m, align 8              ; 3 uses
  %i.o = lshr i64 %i.n, 40
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = and i32 %i.p, 1048575                    ; 3 uses
  %i.r = icmp samesign ult i32 %i.q, 1048574
  br i1 %i.r, label %bb.c, label %bb.d, !prof !40

bb.c:                                             ; preds = %bb.b
  %i.s = add nuw nsw i32 %i.q, 1
  %i.t = zext nneg i32 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 40
  %i.v = and i64 %i.n, -1152920405095219201
  %i.w = or i64 %i.u, %i.v
  store i64 %i.w, ptr %i.m, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.x = icmp eq i32 %i.q, 1048574
  br i1 %i.x, label %bb.e, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !39

bb.e:                                             ; preds = %bb.d
  %i.y = or i64 %i.n, 1152920405095219200
  store i64 %i.y, ptr %i.m, align 8
  call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.m)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.c, %bb.d, %bb.e
  invoke void @_ZN4cvc58internal13preprocessing6passes21ForeignTheoryRewriter8simplifyENS0_12NodeTemplateILb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %2, ptr noundef nonnull align 8 dereferenceable(128) %i.i, ptr noundef nonnull align 8 %3)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.z = load ptr, ptr %3, align 8, !tbaa !36     ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8             ; 3 uses
  %i.ab = and i64 %i.aa, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.ab, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.g, !prof !39

bb.g:                                             ; preds = %bb.f
  %i.ac = add i64 %i.aa, 1152920405095219200
  %i.ad = and i64 %i.ac, 1152920405095219200      ; 2 uses
  %i.ae = and i64 %i.aa, -1152920405095219201
  %i.af = or disjoint i64 %i.ad, %i.ae
  store i64 %i.af, ptr %i.z, align 8
  %i.ag = icmp eq i64 %i.ad, 0
  br i1 %i.ag, label %bb.h, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !39

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #21
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.f, %bb.g, %bb.h
  %i.aj = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.ak = load ptr, ptr %2, align 8, !tbaa !36    ; 9 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %bb.v, label %bb.l

bb.j:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.k:                                             ; preds = %bb.o, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit29
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.l:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  store ptr %i.ak, ptr %4, align 8, !tbaa !36
  %i.ao = load i64, ptr %i.ak, align 8            ; 3 uses
  %i.ap = lshr i64 %i.ao, 40
  %i.aq = trunc nuw nsw i64 %i.ap to i32
  %i.ar = and i32 %i.aq, 1048575                  ; 3 uses
  %i.as = icmp samesign ult i32 %i.ar, 1048574
  br i1 %i.as, label %bb.m, label %bb.n, !prof !40

bb.m:                                             ; preds = %bb.l
  %i.at = add nuw nsw i32 %i.ar, 1
  %i.au = zext nneg i32 %i.at to i64
  %i.av = shl nuw nsw i64 %i.au, 40
  %i.aw = and i64 %i.ao, -1152920405095219201
  %i.ax = or i64 %i.av, %i.aw
  store i64 %i.ax, ptr %i.ak, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit27

bb.n:                                             ; preds = %bb.l
  %i.ay = icmp eq i32 %i.ar, 1048574
  br i1 %i.ay, label %bb.o, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit27, !prof !39

bb.o:                                             ; preds = %bb.n
  %i.az = or i64 %i.ao, 1152920405095219200
  store i64 %i.az, ptr %i.ak, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit27 unwind label %bb.k

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit27: ; preds = %bb.n, %bb.m, %bb.o
  invoke void @_ZN4cvc58internal13preprocessing17AssertionPipeline7replaceEmNS0_12NodeTemplateILb1EEEPNS0_14ProofGeneratorENS0_7TrustIdE(ptr noundef nonnull align 8 dereferenceable(208) %1, i64 noundef %.02234, ptr noundef nonnull align 8 %4, ptr noundef null, i32 noundef 37)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit27
  %i.ba = load ptr, ptr %4, align 8, !tbaa !36    ; 3 uses
  %i.bb = load i64, ptr %i.ba, align 8            ; 3 uses
  %i.bc = and i64 %i.bb, 1152920405095219200
  %.not.i.i28 = icmp eq i64 %i.bc, 1152920405095219200
  br i1 %.not.i.i28, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit29, label %bb.q, !prof !39

bb.q:                                             ; preds = %bb.p
  %i.bd = add i64 %i.bb, 1152920405095219200
  %i.be = and i64 %i.bd, 1152920405095219200      ; 2 uses
  %i.bf = and i64 %i.bb, -1152920405095219201
  %i.bg = or disjoint i64 %i.be, %i.bf
  store i64 %i.bg, ptr %i.ba, align 8
  %i.bh = icmp eq i64 %i.be, 0
  br i1 %i.bh, label %bb.r, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit29, !prof !39

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit29 unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #21
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit29: ; preds = %bb.p, %bb.q, %bb.r
  invoke void @_ZN4cvc58internal13preprocessing17AssertionPipeline15ensureRewrittenEm(ptr noundef nonnull align 8 dereferenceable(208) %1, i64 noundef %.02234)
          to label %bb.t unwind label %bb.k

bb.t:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit29
  %i.bk = load i8, ptr %i.j, align 8, !tbaa !144, !range !145, !noundef !76
  %. = zext nneg i8 %i.bk to i32
  br label %bb.v

bb.u:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit27
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #20
  br label %bb.aa

bb.v:                                             ; preds = %bb.t, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %.020 = phi i32 [ 4, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit ], [ %., %bb.t ]
  %i.bm = load i64, ptr %i.ak, align 8            ; 3 uses
  %i.bn = and i64 %i.bm, 1152920405095219200
  %.not.i.i30 = icmp eq i64 %i.bn, 1152920405095219200
  br i1 %.not.i.i30, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit31, label %bb.w, !prof !39

bb.w:                                             ; preds = %bb.v
  %i.bo = add i64 %i.bm, 1152920405095219200
  %i.bp = and i64 %i.bo, 1152920405095219200      ; 2 uses
  %i.bq = and i64 %i.bm, -1152920405095219201
  %i.br = or disjoint i64 %i.bp, %i.bq
  store i64 %i.br, ptr %i.ak, align 8
  %i.bs = icmp eq i64 %i.bp, 0
  br i1 %i.bs, label %bb.x, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit31, !prof !39

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit31 unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #21
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit31: ; preds = %bb.v, %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  switch i32 %.020, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit31._crit_edge [
    i32 0, label %bb.z
    i32 4, label %bb.z
  ]

bb.z:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit31, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit31
  %i.bv = add nuw i64 %.02234, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bv, %i.h
  br i1 %exitcond.not, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit31._crit_edge, label %bb.b, !llvm.loop !119

bb.aa:                                            ; preds = %bb.k, %bb.u, %bb.j
  %.sink = phi ptr [ %3, %bb.j ], [ %2, %bb.u ], [ %2, %bb.k ]
  %.pn.pn = phi { ptr, i32 } [ %i.am, %bb.j ], [ %i.bl, %bb.u ], [ %i.an, %bb.k ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.sink) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %.pn.pn

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit31._crit_edge: ; preds = %bb.z, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit31, %bb.a
  %i.bw = phi i32 [ 1, %bb.a ], [ 0, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit31 ], [ 1, %bb.z ]
  ret i32 %i.bw
}

declare void @_ZN4cvc58internal13preprocessing17AssertionPipeline7replaceEmNS0_12NodeTemplateILb1EEEPNS0_14ProofGeneratorENS0_7TrustIdE(ptr noundef nonnull align 8 dereferenceable(208), i64 noundef, ptr noundef align 8, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4cvc58internal13preprocessing17AssertionPipeline15ensureRewrittenEm(ptr noundef nonnull align 8 dereferenceable(208), i64 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc58internal13preprocessing6passes20ForeignTheoryRewriteD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4cvc58internal13preprocessing6passes20ForeignTheoryRewriteE, i64 16), ptr %0, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4cvc58internal13preprocessing6passes21ForeignTheoryRewriterE, i64 16), ptr %i.a, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEES4_St4hashIS4_EEE, i64 16), ptr %i.b, align 8, !tbaa !12
  invoke void @_ZN4cvc57context10ContextObj7destroyEv(ptr noundef nonnull align 8 dereferenceable(112) %i.b)
          to label %bb.b unwind label %bb.c, !inline_history !86

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEES4_St4hashIS4_EE5clearEv(ptr noundef nonnull align 8 dereferenceable(112) %i.b)
          to label %_ZN4cvc58internal13preprocessing6passes21ForeignTheoryRewriterD2Ev.exit unwind label %bb.c, !inline_history !86

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #21, !inline_history !86
  unreachable

_ZN4cvc58internal13preprocessing6passes21ForeignTheoryRewriterD2Ev.exit: ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_PNS0_7context11CDOhash_mapIS3_S3_St4hashIS3_EEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS3_ES9_NSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.e) #20, !inline_history !86
  tail call void @_ZN4cvc58internal13preprocessing17PreprocessingPassD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) #20
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc58internal13preprocessing6passes20ForeignTheoryRewriteD0Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4cvc58internal13preprocessing6passes20ForeignTheoryRewriteE, i64 16), ptr %0, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4cvc58internal13preprocessing6passes21ForeignTheoryRewriterE, i64 16), ptr %i.a, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEES4_St4hashIS4_EEE, i64 16), ptr %i.b, align 8, !tbaa !12
  invoke void @_ZN4cvc57context10ContextObj7destroyEv(ptr noundef nonnull align 8 dereferenceable(112) %i.b)
          to label %bb.b unwind label %bb.c, !inline_history !146

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEES4_St4hashIS4_EE5clearEv(ptr noundef nonnull align 8 dereferenceable(112) %i.b)
          to label %_ZN4cvc58internal13preprocessing6passes20ForeignTheoryRewriteD2Ev.exit unwind label %bb.c, !inline_history !146

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #21, !inline_history !146
  unreachable

_ZN4cvc58internal13preprocessing6passes20ForeignTheoryRewriteD2Ev.exit: ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_PNS0_7context11CDOhash_mapIS3_S3_St4hashIS3_EEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS3_ES9_NSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.e) #20, !inline_history !146
  tail call void @_ZN4cvc58internal13preprocessing17PreprocessingPassD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(192) %0) #20, !inline_history !147
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 192) #24
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc58internal13preprocessing6passes21ForeignTheoryRewriterD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4cvc58internal13preprocessing6passes21ForeignTheoryRewriterE, i64 16), ptr %0, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEES4_St4hashIS4_EEE, i64 16), ptr %i.a, align 8, !tbaa !12
  invoke void @_ZN4cvc57context10ContextObj7destroyEv(ptr noundef nonnull align 8 dereferenceable(112) %i.a)
          to label %bb.b unwind label %bb.c, !inline_history !87

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEES4_St4hashIS4_EE5clearEv(ptr noundef nonnull align 8 dereferenceable(112) %i.a)
          to label %_ZN4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEES4_St4hashIS4_EED2Ev.exit unwind label %bb.c, !inline_history !87

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #21, !inline_history !87
  unreachable

_ZN4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEES4_St4hashIS4_EED2Ev.exit: ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_PNS0_7context11CDOhash_mapIS3_S3_St4hashIS3_EEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS3_ES9_NSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.d) #20, !inline_history !87
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc58internal13preprocessing6passes21ForeignTheoryRewriterD0Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4cvc58internal13preprocessing6passes21ForeignTheoryRewriterE, i64 16), ptr %0, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEES4_St4hashIS4_EEE, i64 16), ptr %i.a, align 8, !tbaa !12
  invoke void @_ZN4cvc57context10ContextObj7destroyEv(ptr noundef nonnull align 8 dereferenceable(112) %i.a)
          to label %bb.b unwind label %bb.c, !inline_history !86

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEES4_St4hashIS4_EE5clearEv(ptr noundef nonnull align 8 dereferenceable(112) %i.a)
          to label %_ZN4cvc58internal13preprocessing6passes21ForeignTheoryRewriterD2Ev.exit unwind label %bb.c, !inline_history !86

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #21, !inline_history !86
  unreachable

_ZN4cvc58internal13preprocessing6passes21ForeignTheoryRewriterD2Ev.exit: ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_PNS0_7context11CDOhash_mapIS3_S3_St4hashIS3_EEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS3_ES9_NSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.d) #20, !inline_history !86
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 128) #24
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #20 ; 0 uses
  tail call void @_ZSt9terminatev() #21
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

declare void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !149
  tail call void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !150  ; 2 uses
  tail call void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %.07) #20
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !148

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36   ; 3 uses
  %i.d = load i64, ptr %i.c, align 8              ; 3 uses
  %i.e = and i64 %i.d, 1152920405095219200
  %.not.i.i.i.i = icmp eq i64 %i.e, 1152920405095219200
  br i1 %.not.i.i.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i, label %bb.b, !prof !39

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %i.d, 1152920405095219200
  %i.g = and i64 %i.f, 1152920405095219200        ; 2 uses
  %i.h = and i64 %i.d, -1152920405095219201
  %i.i = or disjoint i64 %i.g, %i.h
  store i64 %i.i, ptr %i.c, align 8
  %i.j = icmp eq i64 %i.g, 0
  br i1 %i.j, label %bb.c, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i, !prof !39

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #21
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i: ; preds = %bb.c, %bb.b, %bb.a
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !36   ; 3 uses
  %i.n = load i64, ptr %i.m, align 8              ; 3 uses
  %i.o = and i64 %i.n, 1152920405095219200
  %.not.i.i1.i.i = icmp eq i64 %i.o, 1152920405095219200
  br i1 %.not.i.i1.i.i, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS6_E.exit, label %bb.e, !prof !39

bb.e:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit.i.i
  %i.p = add i64 %i.n, 1152920405095219200
  %i.q = and i64 %i.p, 1152920405095219200        ; 2 uses
  %i.r = and i64 %i.n, -1152920405095219201
  %i.s = or disjoint i64 %i.q, %i.r
  store i64 %i.s, ptr %i.m, align 8
  %i.t = icmp eq i64 %i.q, 0
end_hunk_0
