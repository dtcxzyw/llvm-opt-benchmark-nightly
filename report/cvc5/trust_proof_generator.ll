Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/trust_proof_generator?download=true
inline.NumInlined: 94
inline.NumDeleted: 61
begin_hunk_0_@_ZN4cvc58internal19TrustProofGeneratorD0Ev:bb.a
; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define hidden void @_ZThn16_N4cvc58internal19TrustProofGeneratorD0Ev(ptr noundef initializes((-16, -8), (0, 8)) %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN4cvc58internal19TrustProofGeneratorD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal19TrustProofGenerator11getProofForENS0_12NodeTemplateILb1EEE(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr nofree noundef readonly align 8 captures(none) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cvc5::internal::CDProof", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %6 = alloca %"class.std::vector", align 8       ; 10 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.c, ptr noundef nonnull align 1 dereferenceable(7) @.str, i64 7, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 7, ptr %i.d, align 8, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 23
  store i8 0, ptr %i.e, align 1, !tbaa !38
  invoke void @_ZN4cvc58internal7CDProofC1ERNS0_3EnvEPNS_7context7ContextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(217) %3, ptr noundef nonnull align 1 %i.b, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(32) %4, i1 noundef zeroext true)
          to label %bb.b unwind label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %4, align 8, !tbaa !39     ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.c
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.c, align 8, !tbaa !38
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.i) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.j = load ptr, ptr %2, align 8, !tbaa !29     ; 5 uses
  store ptr %i.j, ptr %5, align 8, !tbaa !29
  %i.k = load i64, ptr %i.j, align 8              ; 3 uses
  %i.l = lshr i64 %i.k, 40
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = and i32 %i.m, 1048575                    ; 3 uses
  %i.o = icmp samesign ult i32 %i.n, 1048574
  br i1 %i.o, label %bb.c, label %bb.d, !prof !40

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.p = add nuw nsw i32 %i.n, 1
  %i.q = zext nneg i32 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 40
  %i.s = and i64 %i.k, -1152920405095219201
  %i.t = or i64 %i.r, %i.s
  store i64 %i.t, ptr %i.j, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.u = icmp eq i32 %i.n, 1048574
  br i1 %i.u, label %bb.e, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !25

bb.e:                                             ; preds = %bb.d
  %i.v = or i64 %i.k, 1152920405095219200
  store i64 %i.v, ptr %i.j, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit unwind label %bb.v

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.d, %bb.c, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load i32, ptr %i.w, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.z = invoke noundef zeroext i1 @_ZN4cvc58internal7CDProof14addTrustedStepENS0_12NodeTemplateILb1EEENS0_7TrustIdERKSt6vectorIS3_SaIS3_EES9_bNS0_12CDPOverwriteE(ptr noundef nonnull align 8 dereferenceable(217) %3, ptr noundef nonnull align 8 %5, i32 noundef %i.x, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i1 noundef zeroext false, i32 noundef 1)
          to label %bb.f unwind label %bb.w       ; 0 uses

bb.f:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.aa = load ptr, ptr %6, align 8, !tbaa !24    ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !23 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.aa, %i.ac
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.an, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i ], [ %i.aa, %bb.f ] ; 2 uses
  %i.ad = load ptr, ptr %.05.i.i.i, align 8, !tbaa !29 ; 3 uses
  %i.ae = load i64, ptr %i.ad, align 8            ; 3 uses
  %i.af = and i64 %i.ae, 1152920405095219200
  %.not.i.i.i.i.i.i = icmp eq i64 %i.af, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, label %bb.g, !prof !25

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.ag = add i64 %i.ae, 1152920405095219200
  %i.ah = and i64 %i.ag, 1152920405095219200      ; 2 uses
  %i.ai = and i64 %i.ae, -1152920405095219201
  %i.aj = or disjoint i64 %i.ah, %i.ai
  store i64 %i.aj, ptr %i.ad, align 8
  %i.ak = icmp eq i64 %i.ah, 0
  br i1 %i.ak, label %bb.h, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, !prof !25

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #19
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i: ; preds = %bb.h, %bb.g, %.lr.ph.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.an, %i.ac
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !24
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %bb.f
  %i.ao = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.aa, %bb.f ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !26
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.at) #17
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.au = load ptr, ptr %5, align 8, !tbaa !29    ; 3 uses
  %i.av = load i64, ptr %i.au, align 8            ; 3 uses
  %i.aw = and i64 %i.av, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.aw, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.k, !prof !25

bb.k:                                             ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit
  %i.ax = add i64 %i.av, 1152920405095219200
  %i.ay = and i64 %i.ax, 1152920405095219200      ; 2 uses
  %i.az = and i64 %i.av, -1152920405095219201
  %i.ba = or disjoint i64 %i.ay, %i.az
  store i64 %i.ba, ptr %i.au, align 8
  %i.bb = icmp eq i64 %i.ay, 0
  br i1 %i.bb, label %bb.l, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !25

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #19
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, %bb.k, %bb.l
  %i.be = load ptr, ptr %2, align 8, !tbaa !29    ; 5 uses
  store ptr %i.be, ptr %7, align 8, !tbaa !29
  %i.bf = load i64, ptr %i.be, align 8            ; 3 uses
  %i.bg = lshr i64 %i.bf, 40
  %i.bh = trunc nuw nsw i64 %i.bg to i32
  %i.bi = and i32 %i.bh, 1048575                  ; 3 uses
  %i.bj = icmp samesign ult i32 %i.bi, 1048574
  br i1 %i.bj, label %bb.n, label %bb.o, !prof !40

bb.n:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.bk = add nuw nsw i32 %i.bi, 1
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = shl nuw nsw i64 %i.bl, 40
  %i.bn = and i64 %i.bf, -1152920405095219201
  %i.bo = or i64 %i.bm, %i.bn
  store i64 %i.bo, ptr %i.be, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit11

bb.o:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.bp = icmp eq i32 %i.bi, 1048574
  br i1 %i.bp, label %bb.p, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit11, !prof !25

bb.p:                                             ; preds = %bb.o
  %i.bq = or i64 %i.bf, 1152920405095219200
  store i64 %i.bq, ptr %i.be, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit11 unwind label %bb.v

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit11: ; preds = %bb.o, %bb.n, %bb.p
  invoke void @_ZN4cvc58internal7CDProof11getProofForENS0_12NodeTemplateILb1EEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(217) %3, ptr noundef nonnull align 8 %7)
          to label %bb.q unwind label %8

bb.q:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit11
  %i.br = load ptr, ptr %7, align 8, !tbaa !29    ; 3 uses
  %i.bs = load i64, ptr %i.br, align 8            ; 3 uses
  %i.bt = and i64 %i.bs, 1152920405095219200
  %.not.i.i12 = icmp eq i64 %i.bt, 1152920405095219200
  br i1 %.not.i.i12, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit13, label %bb.r, !prof !25

bb.r:                                             ; preds = %bb.q
  %i.bu = add i64 %i.bs, 1152920405095219200
  %i.bv = and i64 %i.bu, 1152920405095219200      ; 2 uses
  %i.bw = and i64 %i.bs, -1152920405095219201
  %i.bx = or disjoint i64 %i.bv, %i.bw
  store i64 %i.bx, ptr %i.br, align 8
  %i.by = icmp eq i64 %i.bv, 0
  br i1 %i.by, label %bb.s, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit13, !prof !25

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.br)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit13 unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #19
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit13: ; preds = %bb.q, %bb.r, %bb.s
  call void @_ZN4cvc58internal7CDProofD1Ev(ptr noundef nonnull align 8 dead_on_return(217) dereferenceable(217) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void

bb.u:                                             ; preds = %bb.a
  %i.cb = landingpad { ptr, i32 }
          cleanup
  %i.cc = load ptr, ptr %4, align 8, !tbaa !39    ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.c
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.u
  %i.ce = load i64, ptr %i.c, align 8, !tbaa !38
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.z

bb.v:                                             ; preds = %bb.p, %bb.e
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.w:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.x

8:                                                ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit11
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %8
  %.sink = phi ptr [ %7, %8 ], [ %5, %bb.w ]
  %.pn6.ph = phi { ptr, i32 } [ %9, %8 ], [ %i.ch, %bb.w ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.sink) #18
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  %.pn6 = phi { ptr, i32 } [ %i.cg, %bb.v ], [ %.pn6.ph, %bb.x ]
  call void @_ZN4cvc58internal7CDProofD1Ev(ptr noundef nonnull align 8 dead_on_return(217) dereferenceable(217) %3) #18
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
  %.pn6.pn = phi { ptr, i32 } [ %.pn6, %bb.y ], [ %i.cb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %.pn6.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

declare void @_ZN4cvc58internal7CDProofC1ERNS0_3EnvEPNS_7context7ContextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(217), ptr noundef nonnull align 1, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

declare noundef zeroext i1 @_ZN4cvc58internal7CDProof14addTrustedStepENS0_12NodeTemplateILb1EEENS0_7TrustIdERKSt6vectorIS3_SaIS3_EES9_bNS0_12CDPOverwriteE(ptr noundef nonnull align 8 dereferenceable(217), ptr noundef align 8, i32 noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !29     ; 3 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = and i64 %i.b, 1152920405095219200
  %.not.i = icmp eq i64 %i.c, 1152920405095219200
  br i1 %.not.i, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit, label %bb.b, !prof !25

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, 1152920405095219200
  %i.e = and i64 %i.d, 1152920405095219200        ; 2 uses
  %i.f = and i64 %i.b, -1152920405095219201
  %i.g = or disjoint i64 %i.e, %i.f
  store i64 %i.g, ptr %i.a, align 8
  %i.h = icmp eq i64 %i.e, 0
  br i1 %i.h, label %bb.c, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit, !prof !25

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

declare void @_ZN4cvc58internal7CDProof11getProofForENS0_12NodeTemplateILb1EEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(217), ptr noundef align 8) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN4cvc58internal7CDProofD1Ev(ptr noundef nonnull align 8 dead_on_return(217) dereferenceable(217)) unnamed_addr #2

; Function Attrs: uwtable
define hidden void @_ZThn16_N4cvc58internal19TrustProofGenerator11getProofForENS0_12NodeTemplateILb1EEE(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr") align 8 %0, ptr noundef %1, ptr nofree noundef readonly align 8 captures(none) %2) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -16
  tail call void @_ZN4cvc58internal19TrustProofGenerator11getProofForENS0_12NodeTemplateILb1EEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef align 8 %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK4cvc58internal19TrustProofGenerator8identifyB5cxx11Ev(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 19, ptr %i.a, align 8, !tbaa !41
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !39
  %i.d = load i64, ptr %i.a, align 8, !tbaa !41   ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.c, ptr noundef nonnull align 1 dereferenceable(19) @.str.1, i64 19, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !37
  %i.f = load ptr, ptr %0, align 8, !tbaa !39
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: uwtable
define hidden void @_ZThn16_NK4cvc58internal19TrustProofGenerator8identifyB5cxx11Ev(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree readnone captures(none) %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !34, !alias.scope !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18, !noalias !46
  store i64 19, ptr %i.a, align 8, !tbaa !41, !noalias !46
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !39, !alias.scope !46
  %i.d = load i64, ptr %i.a, align 8, !tbaa !41, !noalias !46 ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !38, !alias.scope !46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.c, ptr noundef nonnull align 1 dereferenceable(19) @.str.1, i64 19, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !37, !alias.scope !46
  %i.f = load ptr, ptr %0, align 8, !tbaa !39, !alias.scope !46
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18, !noalias !46
  ret void
}

declare noundef zeroext i1 @_ZN4cvc58internal14ProofGenerator10addProofToENS0_12NodeTemplateILb1EEEPNS0_7CDProofENS0_12CDPOverwriteEb(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef align 8, ptr noundef, i32 noundef, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4cvc58internal14ProofGenerator11hasProofForENS0_12NodeTemplateILb1EEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef align 8 %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 true
}

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

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

declare void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #11

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEPS5_ET0_T_SE_SD_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not12 = icmp eq ptr %0, %1
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJRKS3_EEvPT_DpOT0_.exit
  %.014 = phi ptr [ %i.o, %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJRKS3_EEvPT_DpOT0_.exit ], [ %2, %bb.a ] ; 3 uses
  %.sroa.08.013 = phi ptr [ %i.n, %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJRKS3_EEvPT_DpOT0_.exit ], [ %0, %bb.a ] ; 2 uses
  %i.a = load ptr, ptr %.sroa.08.013, align 8, !tbaa !29 ; 5 uses
  store ptr %i.a, ptr %.014, align 8, !tbaa !29
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = lshr i64 %i.b, 40
  %i.d = trunc nuw nsw i64 %i.c to i32
  %i.e = and i32 %i.d, 1048575                    ; 3 uses
  %i.f = icmp samesign ult i32 %i.e, 1048574
  br i1 %i.f, label %bb.b, label %bb.c, !prof !40

bb.b:                                             ; preds = %.lr.ph
  %i.g = add nuw nsw i32 %i.e, 1
  %i.h = zext nneg i32 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 40
  %i.j = and i64 %i.b, -1152920405095219201
  %i.k = or i64 %i.i, %i.j
  store i64 %i.k, ptr %i.a, align 8
  br label %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJRKS3_EEvPT_DpOT0_.exit

bb.c:                                             ; preds = %.lr.ph
  %i.l = icmp eq i32 %i.e, 1048574
  br i1 %i.l, label %bb.d, label %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJRKS3_EEvPT_DpOT0_.exit, !prof !25

bb.d:                                             ; preds = %bb.c
  %i.m = or i64 %i.b, 1152920405095219200
  store i64 %i.m, ptr %i.a, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJRKS3_EEvPT_DpOT0_.exit unwind label %bb.e

_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJRKS3_EEvPT_DpOT0_.exit: ; preds = %bb.c, %bb.b, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.014, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.n, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !47

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  %i.r = tail call ptr @__cxa_begin_catch(ptr %i.q) #18 ; 0 uses
  invoke void @_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEEEvT_S5_(ptr noundef %2, ptr noundef nonnull %.014)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #15
end_hunk_0
