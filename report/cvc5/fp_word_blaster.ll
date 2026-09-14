Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/fp_word_blaster?download=true
inline.NumInlined: 5691
inline.NumDeleted: 981
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6symfpu23conditionalLeftShiftOneIN4cvc58internal6theory2fp14symfpuSymbolic6traitsENS5_17symbolicBitVectorILb0EEENS5_19symbolicPropositionEEET0_RKT1_RKSA_:bb.a

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit21 unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit21: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit19, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @_ZN4cvc58internal6theory2fp14symfpuSymbolic17symbolicBitVectorILb0EEC2Ejj(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef %i.a, i32 noundef 1)
  invoke void @_ZNK4cvc58internal6theory2fp14symfpuSymbolic17symbolicBitVectorILb0EElsERKS5_(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::theory::fp::symfpuSymbolic::symbolicBitVector") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %_ZNK4cvc58internal6theory2fp14symfpuSymbolic17symbolicBitVectorILb0EE16modularLeftShiftERKS5_.exit unwind label %bb.ag

_ZNK4cvc58internal6theory2fp14symfpuSymbolic17symbolicBitVectorILb0EE16modularLeftShiftERKS5_.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit21
  %i.bb = load ptr, ptr %9, align 8, !tbaa !37    ; 3 uses
  %i.bc = load i64, ptr %i.bb, align 8            ; 3 uses
  %i.bd = and i64 %i.bc, 1152920405095219200
  %.not.i.i22 = icmp eq i64 %i.bd, 1152920405095219200
  br i1 %.not.i.i22, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit23, label %bb.v, !prof !29

bb.v:                                             ; preds = %_ZNK4cvc58internal6theory2fp14symfpuSymbolic17symbolicBitVectorILb0EE16modularLeftShiftERKS5_.exit
  %i.be = add i64 %i.bc, 1152920405095219200
  %i.bf = and i64 %i.be, 1152920405095219200      ; 2 uses
  %i.bg = and i64 %i.bc, -1152920405095219201
  %i.bh = or disjoint i64 %i.bf, %i.bg
  store i64 %i.bh, ptr %i.bb, align 8
  %i.bi = icmp eq i64 %i.bf, 0
  br i1 %i.bi, label %bb.w, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit23, !prof !29

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit23 unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit23: ; preds = %_ZNK4cvc58internal6theory2fp14symfpuSymbolic17symbolicBitVectorILb0EE16modularLeftShiftERKS5_.exit, %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  invoke void @_ZN6symfpu3iteIN4cvc58internal6theory2fp14symfpuSymbolic19symbolicPropositionENS5_17symbolicBitVectorILb0EEEE5iteOpERKS6_RKS8_SD_(ptr dead_on_unwind writable sret(%"class.cvc5::internal::theory::fp::symfpuSymbolic::symbolicBitVector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %_ZN6symfpu3ITEIN4cvc58internal6theory2fp14symfpuSymbolic19symbolicPropositionENS5_17symbolicBitVectorILb0EEEEEKT0_RKT_RSA_SE_.exit unwind label %bb.ah

_ZN6symfpu3ITEIN4cvc58internal6theory2fp14symfpuSymbolic19symbolicPropositionENS5_17symbolicBitVectorILb0EEEEEKT0_RKT_RSA_SE_.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit23
  %i.bl = load ptr, ptr %8, align 8, !tbaa !37    ; 3 uses
  %i.bm = load i64, ptr %i.bl, align 8            ; 3 uses
  %i.bn = and i64 %i.bm, 1152920405095219200
  %.not.i.i24 = icmp eq i64 %i.bn, 1152920405095219200
  br i1 %.not.i.i24, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit25, label %bb.y, !prof !29

bb.y:                                             ; preds = %_ZN6symfpu3ITEIN4cvc58internal6theory2fp14symfpuSymbolic19symbolicPropositionENS5_17symbolicBitVectorILb0EEEEEKT0_RKT_RSA_SE_.exit
  %i.bo = add i64 %i.bm, 1152920405095219200
  %i.bp = and i64 %i.bo, 1152920405095219200      ; 2 uses
  %i.bq = and i64 %i.bm, -1152920405095219201
  %i.br = or disjoint i64 %i.bp, %i.bq
  store i64 %i.br, ptr %i.bl, align 8
  %i.bs = icmp eq i64 %i.bp, 0
  br i1 %i.bs, label %bb.z, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit25, !prof !29

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit25 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit25: ; preds = %_ZN6symfpu3ITEIN4cvc58internal6theory2fp14symfpuSymbolic19symbolicPropositionENS5_17symbolicBitVectorILb0EEEEEKT0_RKT_RSA_SE_.exit, %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  ret void

bb.ab:                                            ; preds = %_ZNK4cvc58internal6theory2fp14symfpuSymbolic17symbolicBitVectorILb0EE8getWidthEv.exit
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ac:                                            ; preds = %bb.g
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %bb.h
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #24
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pn = phi { ptr, i32 } [ %i.bx, %bb.ad ], [ %i.bw, %bb.ac ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #24
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ab
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ae ], [ %i.bv, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %common.resume

bb.ag:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit21
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.ai

bb.ah:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit23
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #24
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.pn13 = phi { ptr, i32 } [ %i.bz, %bb.ah ], [ %i.by, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6symfpu14fixedPointSqrtIN4cvc58internal6theory2fp14symfpuSymbolic6traitsEEENS_22resultWithRemainderBitIT_EERKNS8_3ubvE(ptr dead_on_unwind noalias writable sret(%"struct.symfpu::resultWithRemainderBit") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %3 = alloca %"class.cvc5::internal::theory::fp::symfpuSymbolic::symbolicBitVector", align 8 ; 8 uses
  %4 = alloca %"class.cvc5::internal::theory::fp::symfpuSymbolic::symbolicBitVector", align 8 ; 7 uses
  %5 = alloca %"class.cvc5::internal::theory::fp::symfpuSymbolic::symbolicBitVector", align 8 ; 13 uses
  %6 = alloca %"class.cvc5::internal::theory::fp::symfpuSymbolic::symbolicBitVector", align 8 ; 7 uses
  %7 = alloca %"class.cvc5::internal::theory::fp::symfpuSymbolic::symbolicBitVector", align 8 ; 7 uses
  %8 = alloca %"class.cvc5::internal::theory::fp::symfpuSymbolic::symbolicBitVector", align 8 ; 8 uses
  %9 = alloca %"class.cvc5::internal::theory::fp::symfpuSymbolic::symbolicBitVector", align 8 ; 8 uses
  %10 = alloca %"class.cvc5::internal::theory::fp::symfpuSymbolic::symbolicBitVector", align 8 ; 7 uses
  %11 = alloca %"class.cvc5::internal::theory::fp::symfpuSymbolic::symbolicBitVector", align 8 ; 7 uses
  %12 = alloca %"class.cvc5::internal::theory::fp::symfpuSymbolic::symbolicProposition", align 8 ; 7 uses
  %13 = alloca %"class.cvc5::internal::theory::fp::symfpuSymbolic::symbolicBitVector", align 8 ; 7 uses
  %14 = alloca %"class.cvc5::internal::theory::fp::symfpuSymbolic::symbolicBitVector", align 8 ; 8 uses
  %15 = alloca %"class.cvc5::internal::theory::fp::symfpuSymbolic::symbolicBitVector", align 8 ; 7 uses
  %16 = alloca %"class.cvc5::internal::theory::fp::symfpuSymbolic::symbolicBitVector", align 8 ; 7 uses
  %17 = alloca %"class.cvc5::internal::theory::fp::symfpuSymbolic::symbolicBitVector", align 8 ; 7 uses
  %18 = alloca %"class.cvc5::internal::theory::fp::symfpuSymbolic::symbolicProposition", align 8 ; 6 uses
  %19 = alloca %"class.cvc5::internal::theory::fp::symfpuSymbolic::symbolicProposition", align 8 ; 7 uses
  %20 = alloca %"class.cvc5::internal::theory::fp::symfpuSymbolic::symbolicBitVector", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZNK4cvc58internal12NodeTemplateILb1EE7getTypeEb(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext false)
  %i.a = invoke noundef i32 @_ZNK4cvc58internal8TypeNode16getBitVectorSizeEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.f       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8, !tbaa !28     ; 3 uses
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = and i64 %i.c, 1152920405095219200
  %.not.i.i.i = icmp eq i64 %i.d, 1152920405095219200
  br i1 %.not.i.i.i, label %_ZNK4cvc58internal6theory2fp14symfpuSymbolic17symbolicBitVectorILb0EE8getWidthEv.exit, label %bb.c, !prof !29

bb.c:                                             ; preds = %bb.b
  %i.e = add i64 %i.c, 1152920405095219200
  %i.f = and i64 %i.e, 1152920405095219200        ; 2 uses
  %i.g = and i64 %i.c, -1152920405095219201
  %i.h = or disjoint i64 %i.f, %i.g
  store i64 %i.h, ptr %i.b, align 8
  %i.i = icmp eq i64 %i.f, 0
  br i1 %i.i, label %bb.d, label %_ZNK4cvc58internal6theory2fp14symfpuSymbolic17symbolicBitVectorILb0EE8getWidthEv.exit, !prof !29

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_ZNK4cvc58internal6theory2fp14symfpuSymbolic17symbolicBitVectorILb0EE8getWidthEv.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #25
  unreachable

common.resume:                                    ; preds = %bb.du, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.f ], [ %.pn38.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.du ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %common.resume

_ZNK4cvc58internal6theory2fp14symfpuSymbolic17symbolicBitVectorILb0EE8getWidthEv.exit: ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.m = add i32 %i.a, -1                         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.n = add i32 %i.a, -2                         ; 5 uses
  call void @_ZN4cvc58internal6theory2fp14symfpuSymbolic17symbolicBitVectorILb0EEC2Ejj(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %i.n, i32 noundef 0)
  invoke void @_ZNK4cvc58internal6theory2fp14symfpuSymbolic17symbolicBitVectorILb0EE6appendERKS5_(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::theory::fp::symfpuSymbolic::symbolicBitVector") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.g unwind label %bb.bl

bb.g:                                             ; preds = %_ZNK4cvc58internal6theory2fp14symfpuSymbolic17symbolicBitVectorILb0EE8getWidthEv.exit
  %i.o = load ptr, ptr %4, align 8, !tbaa !37     ; 3 uses
  %i.p = load i64, ptr %i.o, align 8              ; 3 uses
  %i.q = and i64 %i.p, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.q, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.h, !prof !29

bb.h:                                             ; preds = %bb.g
  %i.r = add i64 %i.p, 1152920405095219200
  %i.s = and i64 %i.r, 1152920405095219200        ; 2 uses
  %i.t = and i64 %i.p, -1152920405095219201
  %i.u = or disjoint i64 %i.s, %i.t
  store i64 %i.u, ptr %i.o, align 8
  %i.v = icmp eq i64 %i.s, 0
  br i1 %i.v, label %bb.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !29

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  invoke void @_ZN4cvc58internal6theory2fp14symfpuSymbolic17symbolicBitVectorILb0EEC2Ejj(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %i.m, i32 noundef 1)
          to label %_ZN4cvc58internal6theory2fp14symfpuSymbolic17symbolicBitVectorILb0EE3oneERKj.exit unwind label %bb.bm

_ZN4cvc58internal6theory2fp14symfpuSymbolic17symbolicBitVectorILb0EE3oneERKj.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  invoke void @_ZN4cvc58internal6theory2fp14symfpuSymbolic17symbolicBitVectorILb0EEC2Ejj(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef %i.m, i32 noundef %i.n)
          to label %bb.k unwind label %bb.bn

bb.k:                                             ; preds = %_ZN4cvc58internal6theory2fp14symfpuSymbolic17symbolicBitVectorILb0EE3oneERKj.exit
  invoke void @_ZNK4cvc58internal6theory2fp14symfpuSymbolic17symbolicBitVectorILb0EElsERKS5_(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::theory::fp::symfpuSymbolic::symbolicBitVector") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.l unwind label %bb.bo

bb.l:                                             ; preds = %bb.k
  %i.y = load ptr, ptr %7, align 8, !tbaa !37     ; 3 uses
  %i.z = load i64, ptr %i.y, align 8              ; 3 uses
  %i.aa = and i64 %i.z, 1152920405095219200
  %.not.i.i49 = icmp eq i64 %i.aa, 1152920405095219200
  br i1 %.not.i.i49, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit50, label %bb.m, !prof !29

bb.m:                                             ; preds = %bb.l
  %i.ab = add i64 %i.z, 1152920405095219200
  %i.ac = and i64 %i.ab, 1152920405095219200      ; 2 uses
  %i.ad = and i64 %i.z, -1152920405095219201
  %i.ae = or disjoint i64 %i.ac, %i.ad
  store i64 %i.ae, ptr %i.y, align 8
  %i.af = icmp eq i64 %i.ac, 0
  br i1 %i.af, label %bb.n, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit50, !prof !29

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit50 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit50: ; preds = %bb.l, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.ai = load ptr, ptr %6, align 8, !tbaa !37    ; 3 uses
  %i.aj = load i64, ptr %i.ai, align 8            ; 3 uses
  %i.ak = and i64 %i.aj, 1152920405095219200
  %.not.i.i51 = icmp eq i64 %i.ak, 1152920405095219200
  br i1 %.not.i.i51, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit52, label %bb.p, !prof !29

bb.p:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit50
  %i.al = add i64 %i.aj, 1152920405095219200
  %i.am = and i64 %i.al, 1152920405095219200      ; 2 uses
  %i.an = and i64 %i.aj, -1152920405095219201
  %i.ao = or disjoint i64 %i.am, %i.an
  store i64 %i.ao, ptr %i.ai, align 8
  %i.ap = icmp eq i64 %i.am, 0
  br i1 %i.ap, label %bb.q, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit52, !prof !29

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit52 unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit52: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit50, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %.not94 = icmp eq i32 %i.n, 0
  br i1 %.not94, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit52, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit75
  %.096 = phi i32 [ %.0, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit75 ], [ %i.n, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit52 ] ; 2 uses
  %.0.in95 = phi i32 [ %.096, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit75 ], [ %i.m, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit52 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.as = add i32 %.0.in95, -2
  invoke void @_ZN4cvc58internal6theory2fp14symfpuSymbolic17symbolicBitVectorILb0EEC2Ejj(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef %i.m, i32 noundef %i.as)
          to label %bb.s unwind label %bb.br

bb.s:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  invoke void @_ZN4cvc58internal6theory2fp14symfpuSymbolic17symbolicBitVectorILb0EEC2Ejj(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef %i.m, i32 noundef 1)
          to label %_ZN4cvc58internal6theory2fp14symfpuSymbolic17symbolicBitVectorILb0EE3oneERKj.exit53 unwind label %bb.bs

_ZN4cvc58internal6theory2fp14symfpuSymbolic17symbolicBitVectorILb0EE3oneERKj.exit53: ; preds = %bb.s
  invoke void @_ZNK4cvc58internal6theory2fp14symfpuSymbolic17symbolicBitVectorILb0EElsERKS5_(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::theory::fp::symfpuSymbolic::symbolicBitVector") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.t unwind label %bb.bt

bb.t:                                             ; preds = %_ZN4cvc58internal6theory2fp14symfpuSymbolic17symbolicBitVectorILb0EE3oneERKj.exit53
  invoke void @_ZNK4cvc58internal6theory2fp14symfpuSymbolic17symbolicBitVectorILb0EEorERKS5_(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::theory::fp::symfpuSymbolic::symbolicBitVector") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.u unwind label %bb.bu

bb.u:                                             ; preds = %bb.t
  %i.at = load ptr, ptr %10, align 8, !tbaa !37   ; 3 uses
  %i.au = load i64, ptr %i.at, align 8            ; 3 uses
  %i.av = and i64 %i.au, 1152920405095219200
  %.not.i.i54 = icmp eq i64 %i.av, 1152920405095219200
  br i1 %.not.i.i54, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit55, label %bb.v, !prof !29

bb.v:                                             ; preds = %bb.u
  %i.aw = add i64 %i.au, 1152920405095219200
  %i.ax = and i64 %i.aw, 1152920405095219200      ; 2 uses
  %i.ay = and i64 %i.au, -1152920405095219201
  %i.az = or disjoint i64 %i.ax, %i.ay
  store i64 %i.az, ptr %i.at, align 8
  %i.ba = icmp eq i64 %i.ax, 0
  br i1 %i.ba, label %bb.w, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit55, !prof !29

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit55 unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  call void @__clang_call_terminate(ptr %i.bc) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit55: ; preds = %bb.u, %bb.v, %bb.w
  %i.bd = load ptr, ptr %11, align 8, !tbaa !37   ; 3 uses
  %i.be = load i64, ptr %i.bd, align 8            ; 3 uses
  %i.bf = and i64 %i.be, 1152920405095219200
  %.not.i.i56 = icmp eq i64 %i.bf, 1152920405095219200
  br i1 %.not.i.i56, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit57, label %bb.y, !prof !29

bb.y:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit55
  %i.bg = add i64 %i.be, 1152920405095219200
  %i.bh = and i64 %i.bg, 1152920405095219200      ; 2 uses
  %i.bi = and i64 %i.be, -1152920405095219201
  %i.bj = or disjoint i64 %i.bh, %i.bi
  store i64 %i.bj, ptr %i.bd, align 8
  %i.bk = icmp eq i64 %i.bh, 0
  br i1 %i.bk, label %bb.z, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit57, !prof !29

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bd)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit57 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  call void @__clang_call_terminate(ptr %i.bm) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit57: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit55, %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  invoke void @_ZN6symfpu17expandingMultiplyIN4cvc58internal6theory2fp14symfpuSymbolic6traitsENS5_17symbolicBitVectorILb0EEEEET0_RKS9_SB_(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::theory::fp::symfpuSymbolic::symbolicBitVector") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.ab unwind label %bb.bx

bb.ab:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit57
  invoke void @_ZNK4cvc58internal6theory2fp14symfpuSymbolic17symbolicBitVectorILb0EEleERKS5_(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::theory::fp::symfpuSymbolic::symbolicProposition") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.ac unwind label %bb.by

bb.ac:                                            ; preds = %bb.ab
  %i.bn = load ptr, ptr %13, align 8, !tbaa !37   ; 3 uses
  %i.bo = load i64, ptr %i.bn, align 8            ; 3 uses
  %i.bp = and i64 %i.bo, 1152920405095219200
  %.not.i.i58 = icmp eq i64 %i.bp, 1152920405095219200
  br i1 %.not.i.i58, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit59, label %bb.ad, !prof !29

bb.ad:                                            ; preds = %bb.ac
  %i.bq = add i64 %i.bo, 1152920405095219200
  %i.br = and i64 %i.bq, 1152920405095219200      ; 2 uses
  %i.bs = and i64 %i.bo, -1152920405095219201
  %i.bt = or disjoint i64 %i.br, %i.bs
  store i64 %i.bt, ptr %i.bn, align 8
  %i.bu = icmp eq i64 %i.br, 0
  br i1 %i.bu, label %bb.ae, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit59, !prof !29

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bn)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit59 unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  call void @__clang_call_terminate(ptr %i.bw) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit59: ; preds = %bb.ac, %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  invoke void @_ZN4cvc58internal6theory2fp14symfpuSymbolic17symbolicBitVectorILb0EEC2ERKNS3_19symbolicPropositionE(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.ag unwind label %bb.ca

bb.ag:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit59
  invoke void @_ZNK4cvc58internal6theory2fp14symfpuSymbolic17symbolicBitVectorILb0EE6extendEj(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::theory::fp::symfpuSymbolic::symbolicBitVector") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %17, i32 noundef %i.n)
          to label %bb.ah unwind label %bb.cb

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZNK4cvc58internal6theory2fp14symfpuSymbolic17symbolicBitVectorILb0EElsERKS5_(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::theory::fp::symfpuSymbolic::symbolicBitVector") align 8 %15, ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.ai unwind label %bb.cc

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZNK4cvc58internal6theory2fp14symfpuSymbolic17symbolicBitVectorILb0EEorERKS5_(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::theory::fp::symfpuSymbolic::symbolicBitVector") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.aj unwind label %bb.cd

bb.aj:                                            ; preds = %bb.ai
  %i.bx = load ptr, ptr %5, align 8, !tbaa !37    ; 4 uses
  %i.by = load ptr, ptr %14, align 8, !tbaa !37
  %.not.i.i.i60 = icmp eq ptr %i.bx, %i.by
  br i1 %.not.i.i.i60, label %_ZN4cvc58internal6theory2fp14symfpuSymbolic17symbolicBitVectorILb0EEaSEOS5_.exit, label %bb.ak, !prof !29

bb.ak:                                            ; preds = %bb.aj
  %i.bz = load i64, ptr %i.bx, align 8            ; 3 uses
  %i.ca = and i64 %i.bz, 1152920405095219200
  %.not.i.i.i.i = icmp eq i64 %i.ca, 1152920405095219200
  br i1 %.not.i.i.i.i, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i, label %bb.al, !prof !29

bb.al:                                            ; preds = %bb.ak
  %i.cb = add i64 %i.bz, 1152920405095219200
  %i.cc = and i64 %i.cb, 1152920405095219200      ; 2 uses
  %i.cd = and i64 %i.bz, -1152920405095219201
  %i.ce = or disjoint i64 %i.cc, %i.cd
  store i64 %i.ce, ptr %i.bx, align 8
  %i.cf = icmp eq i64 %i.cc, 0
  br i1 %i.cf, label %bb.am, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i, !prof !29

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i unwind label %bb.ce

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i: ; preds = %bb.am, %bb.al, %bb.ak
  %i.cg = load ptr, ptr %14, align 8, !tbaa !37   ; 5 uses
  store ptr %i.cg, ptr %5, align 8, !tbaa !37
  %i.ch = load i64, ptr %i.cg, align 8            ; 3 uses
  %i.ci = lshr i64 %i.ch, 40
  %i.cj = trunc nuw nsw i64 %i.ci to i32
  %i.ck = and i32 %i.cj, 1048575                  ; 3 uses
  %i.cl = icmp samesign ult i32 %i.ck, 1048574
  br i1 %i.cl, label %bb.an, label %bb.ao, !prof !38

bb.an:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i
  %i.cm = add nuw nsw i32 %i.ck, 1
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = shl nuw nsw i64 %i.cn, 40
  %i.cp = and i64 %i.ch, -1152920405095219201
  %i.cq = or i64 %i.co, %i.cp
  store i64 %i.cq, ptr %i.cg, align 8
  br label %_ZN4cvc58internal6theory2fp14symfpuSymbolic17symbolicBitVectorILb0EEaSEOS5_.exit

bb.ao:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i
  %i.cr = icmp eq i32 %i.ck, 1048574
  br i1 %i.cr, label %bb.ap, label %_ZN4cvc58internal6theory2fp14symfpuSymbolic17symbolicBitVectorILb0EEaSEOS5_.exit, !prof !29

bb.ap:                                            ; preds = %bb.ao
  %i.cs = or i64 %i.ch, 1152920405095219200
  store i64 %i.cs, ptr %i.cg, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cg)
          to label %_ZN4cvc58internal6theory2fp14symfpuSymbolic17symbolicBitVectorILb0EEaSEOS5_.exit unwind label %bb.ce

_ZN4cvc58internal6theory2fp14symfpuSymbolic17symbolicBitVectorILb0EEaSEOS5_.exit: ; preds = %bb.ao, %bb.an, %bb.aj, %bb.ap
  %i.ct = load ptr, ptr %14, align 8, !tbaa !37   ; 3 uses
  %i.cu = load i64, ptr %i.ct, align 8            ; 3 uses
  %i.cv = and i64 %i.cu, 1152920405095219200
  %.not.i.i62 = icmp eq i64 %i.cv, 1152920405095219200
  br i1 %.not.i.i62, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit63, label %bb.aq, !prof !29

bb.aq:                                            ; preds = %_ZN4cvc58internal6theory2fp14symfpuSymbolic17symbolicBitVectorILb0EEaSEOS5_.exit
  %i.cw = add i64 %i.cu, 1152920405095219200
  %i.cx = and i64 %i.cw, 1152920405095219200      ; 2 uses
  %i.cy = and i64 %i.cu, -1152920405095219201
  %i.cz = or disjoint i64 %i.cx, %i.cy
  store i64 %i.cz, ptr %i.ct, align 8
  %i.da = icmp eq i64 %i.cx, 0
  br i1 %i.da, label %bb.ar, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit63, !prof !29

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ct)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit63 unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.db = landingpad { ptr, i32 }
          catch ptr null
  %i.dc = extractvalue { ptr, i32 } %i.db, 0
  call void @__clang_call_terminate(ptr %i.dc) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit63: ; preds = %_ZN4cvc58internal6theory2fp14symfpuSymbolic17symbolicBitVectorILb0EEaSEOS5_.exit, %bb.aq, %bb.ar
  %i.dd = load ptr, ptr %15, align 8, !tbaa !37   ; 3 uses
  %i.de = load i64, ptr %i.dd, align 8            ; 3 uses
  %i.df = and i64 %i.de, 1152920405095219200
  %.not.i.i64 = icmp eq i64 %i.df, 1152920405095219200
  br i1 %.not.i.i64, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit65, label %bb.at, !prof !29

bb.at:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit63
  %i.dg = add i64 %i.de, 1152920405095219200
  %i.dh = and i64 %i.dg, 1152920405095219200      ; 2 uses
  %i.di = and i64 %i.de, -1152920405095219201
  %i.dj = or disjoint i64 %i.dh, %i.di
  store i64 %i.dj, ptr %i.dd, align 8
  %i.dk = icmp eq i64 %i.dh, 0
  br i1 %i.dk, label %bb.au, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit65, !prof !29

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dd)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit65 unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dl = landingpad { ptr, i32 }
          catch ptr null
  %i.dm = extractvalue { ptr, i32 } %i.dl, 0
  call void @__clang_call_terminate(ptr %i.dm) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit65: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit63, %bb.at, %bb.au
  %i.dn = load ptr, ptr %16, align 8, !tbaa !37   ; 3 uses
  %i.do = load i64, ptr %i.dn, align 8            ; 3 uses
  %i.dp = and i64 %i.do, 1152920405095219200
  %.not.i.i66 = icmp eq i64 %i.dp, 1152920405095219200
  br i1 %.not.i.i66, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit67, label %bb.aw, !prof !29

bb.aw:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit65
  %i.dq = add i64 %i.do, 1152920405095219200
  %i.dr = and i64 %i.dq, 1152920405095219200      ; 2 uses
  %i.ds = and i64 %i.do, -1152920405095219201
  %i.dt = or disjoint i64 %i.dr, %i.ds
  store i64 %i.dt, ptr %i.dn, align 8
  %i.du = icmp eq i64 %i.dr, 0
  br i1 %i.du, label %bb.ax, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit67, !prof !29

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dn)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit67 unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dv = landingpad { ptr, i32 }
          catch ptr null
  %i.dw = extractvalue { ptr, i32 } %i.dv, 0
  call void @__clang_call_terminate(ptr %i.dw) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit67: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit65, %bb.aw, %bb.ax
  %i.dx = load ptr, ptr %17, align 8, !tbaa !37   ; 3 uses
  %i.dy = load i64, ptr %i.dx, align 8            ; 3 uses
  %i.dz = and i64 %i.dy, 1152920405095219200
  %.not.i.i68 = icmp eq i64 %i.dz, 1152920405095219200
  br i1 %.not.i.i68, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit69, label %bb.az, !prof !29

bb.az:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit67
  %i.ea = add i64 %i.dy, 1152920405095219200
  %i.eb = and i64 %i.ea, 1152920405095219200      ; 2 uses
  %i.ec = and i64 %i.dy, -1152920405095219201
  %i.ed = or disjoint i64 %i.eb, %i.ec
  store i64 %i.ed, ptr %i.dx, align 8
  %i.ee = icmp eq i64 %i.eb, 0
  br i1 %i.ee, label %bb.ba, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit69, !prof !29

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dx)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit69 unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ef = landingpad { ptr, i32 }
          catch ptr null
  %i.eg = extractvalue { ptr, i32 } %i.ef, 0
  call void @__clang_call_terminate(ptr %i.eg) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit69: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit67, %bb.az, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  %i.eh = load ptr, ptr %12, align 8, !tbaa !37   ; 3 uses
  %i.ei = load i64, ptr %i.eh, align 8            ; 3 uses
  %i.ej = and i64 %i.ei, 1152920405095219200
  %.not.i.i70 = icmp eq i64 %i.ej, 1152920405095219200
  br i1 %.not.i.i70, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit71, label %bb.bc, !prof !29

bb.bc:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit69
  %i.ek = add i64 %i.ei, 1152920405095219200
  %i.el = and i64 %i.ek, 1152920405095219200      ; 2 uses
  %i.em = and i64 %i.ei, -1152920405095219201
  %i.en = or disjoint i64 %i.el, %i.em
  store i64 %i.en, ptr %i.eh, align 8
  %i.eo = icmp eq i64 %i.el, 0
  br i1 %i.eo, label %bb.bd, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit71, !prof !29

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.eh)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit71 unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ep = landingpad { ptr, i32 }
          catch ptr null
  %i.eq = extractvalue { ptr, i32 } %i.ep, 0
  call void @__clang_call_terminate(ptr %i.eq) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit71: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit69, %bb.bc, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.er = load ptr, ptr %9, align 8, !tbaa !37    ; 3 uses
  %i.es = load i64, ptr %i.er, align 8            ; 3 uses
  %i.et = and i64 %i.es, 1152920405095219200
  %.not.i.i72 = icmp eq i64 %i.et, 1152920405095219200
  br i1 %.not.i.i72, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit73, label %bb.bf, !prof !29

bb.bf:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit71
  %i.eu = add i64 %i.es, 1152920405095219200
  %i.ev = and i64 %i.eu, 1152920405095219200      ; 2 uses
  %i.ew = and i64 %i.es, -1152920405095219201
  %i.ex = or disjoint i64 %i.ev, %i.ew
  store i64 %i.ex, ptr %i.er, align 8
  %i.ey = icmp eq i64 %i.ev, 0
  br i1 %i.ey, label %bb.bg, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit73, !prof !29

bb.bg:                                            ; preds = %bb.bf
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.er)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit73 unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ez = landingpad { ptr, i32 }
          catch ptr null
  %i.fa = extractvalue { ptr, i32 } %i.ez, 0
  call void @__clang_call_terminate(ptr %i.fa) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit73: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit71, %bb.bf, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.fb = load ptr, ptr %8, align 8, !tbaa !37    ; 3 uses
  %i.fc = load i64, ptr %i.fb, align 8            ; 3 uses
  %i.fd = and i64 %i.fc, 1152920405095219200
  %.not.i.i74 = icmp eq i64 %i.fd, 1152920405095219200
  br i1 %.not.i.i74, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit75, label %bb.bi, !prof !29

bb.bi:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit73
  %i.fe = add i64 %i.fc, 1152920405095219200
  %i.ff = and i64 %i.fe, 1152920405095219200      ; 2 uses
  %i.fg = and i64 %i.fc, -1152920405095219201
  %i.fh = or disjoint i64 %i.ff, %i.fg
  store i64 %i.fh, ptr %i.fb, align 8
  %i.fi = icmp eq i64 %i.ff, 0
  br i1 %i.fi, label %bb.bj, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit75, !prof !29

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fb)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit75 unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fj = landingpad { ptr, i32 }
          catch ptr null
  %i.fk = extractvalue { ptr, i32 } %i.fj, 0
  call void @__clang_call_terminate(ptr %i.fk) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit75: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit73, %bb.bi, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %.0 = add i32 %.096, -1                         ; 2 uses
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !941

bb.bl:                                            ; preds = %_ZNK4cvc58internal6theory2fp14symfpuSymbolic17symbolicBitVectorILb0EE8getWidthEv.exit
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.du

bb.bm:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bn:                                            ; preds = %_ZN4cvc58internal6theory2fp14symfpuSymbolic17symbolicBitVectorILb0EE3oneERKj.exit
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bo:                                            ; preds = %bb.k
  %i.fo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #24
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.pn = phi { ptr, i32 } [ %i.fo, %bb.bo ], [ %i.fn, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #24
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bm
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.bp ], [ %i.fm, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.dt

bb.br:                                            ; preds = %.lr.ph
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.bs:                                            ; preds = %bb.s
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.bt:                                            ; preds = %_ZN4cvc58internal6theory2fp14symfpuSymbolic17symbolicBitVectorILb0EE3oneERKj.exit53
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bu:                                            ; preds = %bb.t
  %i.fs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #24
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.pn33 = phi { ptr, i32 } [ %i.fs, %bb.bu ], [ %i.fr, %bb.bt ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #24
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bs
  %.pn33.pn = phi { ptr, i32 } [ %.pn33, %bb.bv ], [ %i.fq, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.ck

bb.bx:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit57
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.by:                                            ; preds = %bb.ab
  %i.fu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #24
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.pn36 = phi { ptr, i32 } [ %i.fu, %bb.by ], [ %i.ft, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %bb.cj

bb.ca:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit59
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.cb:                                            ; preds = %bb.ag
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.cc:                                            ; preds = %bb.ah
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.cd:                                            ; preds = %bb.ai
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.ce:                                            ; preds = %bb.ap, %bb.am
  %i.fz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #24
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.pn38 = phi { ptr, i32 } [ %i.fz, %bb.ce ], [ %i.fy, %bb.cd ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #24
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.cc
  %.pn38.pn = phi { ptr, i32 } [ %.pn38, %bb.cf ], [ %i.fx, %bb.cc ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #24
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cb
  %.pn38.pn.pn = phi { ptr, i32 } [ %.pn38.pn, %bb.cg ], [ %i.fw, %bb.cb ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #24
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.ca
  %.pn38.pn.pn.pn = phi { ptr, i32 } [ %.pn38.pn.pn, %bb.ch ], [ %i.fv, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #24
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.bz
  %.pn38.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn38.pn.pn.pn, %bb.ci ], [ %.pn36, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #24
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.bw
  %.pn38.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn38.pn.pn.pn.pn, %bb.cj ], [ %.pn33.pn, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #24
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.br
  %.pn38.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn38.pn.pn.pn.pn.pn, %bb.ck ], [ %i.fp, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.ds

._crit_edge:                                      ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit75, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit52
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  invoke void @_ZN6symfpu17expandingMultiplyIN4cvc58internal6theory2fp14symfpuSymbolic6traitsENS5_17symbolicBitVectorILb0EEEEET0_RKS9_SB_(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::theory::fp::symfpuSymbolic::symbolicBitVector") align 8 %20, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.cm unwind label %bb.dl

bb.cm:                                            ; preds = %._crit_edge
  invoke void @_ZNK4cvc58internal6theory2fp14symfpuSymbolic17symbolicBitVectorILb0EEeqERKS5_(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::theory::fp::symfpuSymbolic::symbolicProposition") align 8 %19, ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.cn unwind label %bb.dm

bb.cn:                                            ; preds = %bb.cm
  invoke void @_ZNK4cvc58internal6theory2fp14symfpuSymbolic19symbolicPropositionntEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::theory::fp::symfpuSymbolic::symbolicProposition") align 8 %18, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.co unwind label %bb.dn

bb.co:                                            ; preds = %bb.cn
  %i.ga = load ptr, ptr %5, align 8, !tbaa !37    ; 5 uses
  store ptr %i.ga, ptr %0, align 8, !tbaa !37
  %i.gb = load i64, ptr %i.ga, align 8            ; 3 uses
  %i.gc = lshr i64 %i.gb, 40
  %i.gd = trunc nuw nsw i64 %i.gc to i32
  %i.ge = and i32 %i.gd, 1048575                  ; 3 uses
  %i.gf = icmp samesign ult i32 %i.ge, 1048574
  br i1 %i.gf, label %bb.cp, label %bb.cq, !prof !38

bb.cp:                                            ; preds = %bb.co
  %i.gg = add nuw nsw i32 %i.ge, 1
  %i.gh = zext nneg i32 %i.gg to i64
  %i.gi = shl nuw nsw i64 %i.gh, 40
  %i.gj = and i64 %i.gb, -1152920405095219201
  %i.gk = or i64 %i.gi, %i.gj
  store i64 %i.gk, ptr %i.ga, align 8
  br label %_ZN4cvc58internal6theory2fp14symfpuSymbolic17symbolicBitVectorILb0EEC2ERKS5_.exit.i

bb.cq:                                            ; preds = %bb.co
  %i.gl = icmp eq i32 %i.ge, 1048574
  br i1 %i.gl, label %bb.cr, label %_ZN4cvc58internal6theory2fp14symfpuSymbolic17symbolicBitVectorILb0EEC2ERKS5_.exit.i, !prof !29

bb.cr:                                            ; preds = %bb.cq
  %i.gm = or i64 %i.gb, 1152920405095219200
  store i64 %i.gm, ptr %i.ga, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ga)
          to label %_ZN4cvc58internal6theory2fp14symfpuSymbolic17symbolicBitVectorILb0EEC2ERKS5_.exit.i unwind label %bb.do

_ZN4cvc58internal6theory2fp14symfpuSymbolic17symbolicBitVectorILb0EEC2ERKS5_.exit.i: ; preds = %bb.cr, %bb.cq, %bb.cp
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.go = load ptr, ptr %18, align 8, !tbaa !37   ; 8 uses
  store ptr %i.go, ptr %i.gn, align 8, !tbaa !37
end_hunk_0
