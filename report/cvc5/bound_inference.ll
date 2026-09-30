Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/bound_inference?download=true
inline.NumInlined: 915
inline.NumDeleted: 355
begin_hunk_0_@_ZN4cvc58internal6theory5arith14BoundInference18update_lower_boundERKNS0_12NodeTemplateILb1EEES7_S7_b:bb.a
bb.cs:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i127
  %i.js = icmp eq i32 %i.jl, 1048574
  br i1 %i.js, label %bb.ct, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit128, !prof !43

bb.ct:                                            ; preds = %bb.cs
  %i.jt = or i64 %i.ji, 1152920405095219200
  store i64 %i.jt, ptr %i.jh, align 8
  call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.jh)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit128

bb.cu:                                            ; preds = %bb.bt
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %.body110

bb.cv:                                            ; preds = %bb.ca
  %i.jv = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.cw:                                            ; preds = %bb.ch, %bb.ce
  %i.jw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #22
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %.pn = phi { ptr, i32 } [ %i.jw, %bb.cw ], [ %i.jv, %bb.cv ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #22
  br label %.body110

.body110:                                         ; preds = %bb.cu, %bb.bz, %bb.cx
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.cx ], [ %i.ju, %bb.cu ], [ %.pn5.i108, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %common.resume

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit128: ; preds = %bb.ct, %bb.cs, %bb.cr, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit124, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit94, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit107, %bb.br, %bb.bs
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt11_Tuple_implILm0EJN4cvc58internal6theory5arith6linear10PolynomialENS1_4kind6Kind_tENS4_8ConstantEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 3 uses
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = and i64 %i.c, 1152920405095219200
  %.not.i.i.i.i = icmp eq i64 %i.d, 1152920405095219200
  br i1 %.not.i.i.i.i, label %_ZNSt10_Head_baseILm0EN4cvc58internal6theory5arith6linear10PolynomialELb0EED2Ev.exit, label %bb.b, !prof !43

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %i.c, 1152920405095219200
  %i.f = and i64 %i.e, 1152920405095219200        ; 2 uses
  %i.g = and i64 %i.c, -1152920405095219201
  %i.h = or disjoint i64 %i.f, %i.g
  store i64 %i.h, ptr %i.b, align 8
  %i.i = icmp eq i64 %i.f, 0
  br i1 %i.i, label %bb.c, label %_ZNSt10_Head_baseILm0EN4cvc58internal6theory5arith6linear10PolynomialELb0EED2Ev.exit, !prof !43

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_ZNSt10_Head_baseILm0EN4cvc58internal6theory5arith6linear10PolynomialELb0EED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #21
  unreachable

_ZNSt10_Head_baseILm0EN4cvc58internal6theory5arith6linear10PolynomialELb0EED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.l = load ptr, ptr %0, align 8, !tbaa !29     ; 3 uses
  %i.m = load i64, ptr %i.l, align 8              ; 3 uses
  %i.n = and i64 %i.m, 1152920405095219200
  %.not.i.i.i.i1 = icmp eq i64 %i.n, 1152920405095219200
  br i1 %.not.i.i.i.i1, label %_ZNSt10_Head_baseILm2EN4cvc58internal6theory5arith6linear8ConstantELb0EED2Ev.exit, label %bb.e, !prof !43

bb.e:                                             ; preds = %_ZNSt10_Head_baseILm0EN4cvc58internal6theory5arith6linear10PolynomialELb0EED2Ev.exit
  %i.o = add i64 %i.m, 1152920405095219200
  %i.p = and i64 %i.o, 1152920405095219200        ; 2 uses
  %i.q = and i64 %i.m, -1152920405095219201
  %i.r = or disjoint i64 %i.p, %i.q
  store i64 %i.r, ptr %i.l, align 8
  %i.s = icmp eq i64 %i.p, 0
  br i1 %i.s, label %bb.f, label %_ZNSt10_Head_baseILm2EN4cvc58internal6theory5arith6linear8ConstantELb0EED2Ev.exit, !prof !43

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_ZNSt10_Head_baseILm2EN4cvc58internal6theory5arith6linear8ConstantELb0EED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #21
  unreachable

_ZNSt10_Head_baseILm2EN4cvc58internal6theory5arith6linear8ConstantELb0EED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0EN4cvc58internal6theory5arith6linear10PolynomialELb0EED2Ev.exit, %bb.e, %bb.f
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc58internal6theory5arith6linear11NodeWrapperD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !29     ; 3 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = and i64 %i.b, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.c, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.b, !prof !43

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, 1152920405095219200
  %i.e = and i64 %i.d, 1152920405095219200        ; 2 uses
  %i.f = and i64 %i.b, -1152920405095219201
  %i.g = or disjoint i64 %i.e, %i.f
  store i64 %i.g, ptr %i.a, align 8
  %i.h = icmp eq i64 %i.e, 0
  br i1 %i.h, label %bb.c, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !43

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #21
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK4cvc58internal6theory5arith14BoundInference16replaceByOriginsERSt6vectorINS0_12NodeTemplateILb1EEESaIS6_EE(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.373", align 8   ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !91     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !91   ; 3 uses
  %.not224 = icmp eq ptr %i.a, %i.c
  br i1 %.not224, label %._crit_edge228, label %.lr.ph227

.lr.ph227:                                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.i = icmp eq ptr %i.h, %i.e
  br i1 %i.i, label %._crit_edge228, label %.lr.ph227.split

._crit_edge228.loopexit229:                       ; preds = %._crit_edge
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !91
  %.pre230 = load ptr, ptr %2, align 8, !tbaa !91
  %.pre231 = load ptr, ptr %i.f, align 8, !tbaa !91
  %.pre232 = load ptr, ptr %1, align 8, !tbaa !91
  br label %._crit_edge228

._crit_edge228:                                   ; preds = %.lr.ph227, %._crit_edge228.loopexit229, %bb.a
  %i.j = phi ptr [ %.pre232, %._crit_edge228.loopexit229 ], [ %i.a, %bb.a ], [ %i.a, %.lr.ph227 ] ; 2 uses
  %i.k = phi ptr [ %.pre231, %._crit_edge228.loopexit229 ], [ null, %bb.a ], [ null, %.lr.ph227 ]
  %i.l = phi ptr [ %.pre230, %._crit_edge228.loopexit229 ], [ null, %bb.a ], [ null, %.lr.ph227 ]
  %i.m = phi ptr [ %.pre, %._crit_edge228.loopexit229 ], [ %i.a, %bb.a ], [ %i.c, %.lr.ph227 ]
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = getelementptr inbounds i8, ptr %i.j, i64 %i.p
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEvSA_T_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.q, ptr %i.l, ptr %i.k)
          to label %bb.z unwind label %bb.ae

.lr.ph227.split:                                  ; preds = %.lr.ph227, %._crit_edge
  %.sroa.0201.0225 = phi ptr [ %i.s, %._crit_edge ], [ %i.a, %.lr.ph227 ] ; 5 uses
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !36   ; 2 uses
  %.not217222 = icmp eq ptr %i.r, %i.e
  br i1 %.not217222, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE12emplace_backIJRKS3_EEERS3_DpOT_.exit, %.lr.ph227.split
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0201.0225, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.s, %i.c
  br i1 %.not, label %._crit_edge228.loopexit229, label %.lr.ph227.split, !llvm.loop !90

.lr.ph:                                           ; preds = %.lr.ph227.split, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE12emplace_backIJRKS3_EEERS3_DpOT_.exit
  %.sroa.0197.0223 = phi ptr [ %i.df, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE12emplace_backIJRKS3_EEERS3_DpOT_.exit ], [ %i.r, %.lr.ph227.split ] ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0197.0223, i64 56
  %i.u = load ptr, ptr %.sroa.0201.0225, align 8, !tbaa !29 ; 14 uses
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !29
  %i.w = icmp eq ptr %i.u, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0197.0223, i64 88
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !29
  %i.z = icmp eq ptr %i.u, %i.y                   ; 2 uses
  br i1 %i.w, label %bb.b, label %bb.t

bb.b:                                             ; preds = %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0197.0223, i64 64 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !29
  %.not220 = icmp eq ptr %i.u, %i.ab              ; 2 uses
  br i1 %i.z, label %bb.c, label %3

bb.c:                                             ; preds = %bb.b
  br i1 %.not220, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE12emplace_backIJRKS3_EEERS3_DpOT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0197.0223, i64 96 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !29
  %.not221 = icmp eq ptr %i.u, %i.ad
  br i1 %.not221, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE12emplace_backIJRKS3_EEERS3_DpOT_.exit, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit:  ; preds = %bb.d
  %i.ae = load i64, ptr %i.u, align 8             ; 3 uses
  %i.af = and i64 %i.ae, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.af, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, label %bb.e, !prof !43

bb.e:                                             ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit
  %i.ag = add i64 %i.ae, 1152920405095219200
  %i.ah = and i64 %i.ag, 1152920405095219200      ; 2 uses
  %i.ai = and i64 %i.ae, -1152920405095219201
  %i.aj = or disjoint i64 %i.ah, %i.ai
  store i64 %i.aj, ptr %i.u, align 8
  %i.ak = icmp eq i64 %i.ah, 0
  br i1 %i.ak, label %bb.f, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, !prof !43

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i unwind label %bb.o

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i:    ; preds = %bb.f, %bb.e, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit
  %i.al = load ptr, ptr %i.aa, align 8, !tbaa !29 ; 5 uses
  store ptr %i.al, ptr %.sroa.0201.0225, align 8, !tbaa !29
  %i.am = load i64, ptr %i.al, align 8            ; 3 uses
  %i.an = lshr i64 %i.am, 40
  %i.ao = trunc nuw nsw i64 %i.an to i32
  %i.ap = and i32 %i.ao, 1048575                  ; 3 uses
  %i.aq = icmp samesign ult i32 %i.ap, 1048574
  br i1 %i.aq, label %bb.g, label %bb.h, !prof !44

bb.g:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.ar = add nuw nsw i32 %i.ap, 1
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = shl nuw nsw i64 %i.as, 40
  %i.au = and i64 %i.am, -1152920405095219201
  %i.av = or i64 %i.at, %i.au
  store i64 %i.av, ptr %i.al, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit

bb.h:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.aw = icmp eq i32 %i.ap, 1048574
  br i1 %i.aw, label %bb.i, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, !prof !43

bb.i:                                             ; preds = %bb.h
  %i.ax = or i64 %i.am, 1152920405095219200
  store i64 %i.ax, ptr %i.al, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit unwind label %bb.o

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit: ; preds = %bb.h, %bb.g, %bb.i
  %i.ay = load ptr, ptr %i.f, align 8, !tbaa !57  ; 3 uses
  %i.az = load ptr, ptr %i.g, align 8, !tbaa !58
  %.not.i76 = icmp eq ptr %i.ay, %i.az
  br i1 %.not.i76, label %bb.n, label %bb.j

bb.j:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit
  %i.ba = load ptr, ptr %i.ac, align 8, !tbaa !29 ; 5 uses
  store ptr %i.ba, ptr %i.ay, align 8, !tbaa !29
  %i.bb = load i64, ptr %i.ba, align 8            ; 3 uses
  %i.bc = lshr i64 %i.bb, 40
  %i.bd = trunc nuw nsw i64 %i.bc to i32
  %i.be = and i32 %i.bd, 1048575                  ; 3 uses
  %i.bf = icmp samesign ult i32 %i.be, 1048574
  br i1 %i.bf, label %bb.k, label %bb.l, !prof !44

bb.k:                                             ; preds = %bb.j
  %i.bg = add nuw nsw i32 %i.be, 1
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = shl nuw nsw i64 %i.bh, 40
  %i.bj = and i64 %i.bb, -1152920405095219201
  %i.bk = or i64 %i.bi, %i.bj
  store i64 %i.bk, ptr %i.ba, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i

bb.l:                                             ; preds = %bb.j
  %i.bl = icmp eq i32 %i.be, 1048574
  br i1 %i.bl, label %bb.m, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i, !prof !43

bb.m:                                             ; preds = %bb.l
  %i.bm = or i64 %i.bb, 1152920405095219200
  store i64 %i.bm, ptr %i.ba, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i unwind label %bb.o

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i: ; preds = %bb.m, %bb.l, %bb.k
  %i.bn = load ptr, ptr %i.f, align 8, !tbaa !57
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %i.bo, ptr %i.f, align 8, !tbaa !57
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE12emplace_backIJRKS3_EEERS3_DpOT_.exit

bb.n:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.ay, ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE12emplace_backIJRKS3_EEERS3_DpOT_.exit unwind label %bb.o

bb.o:                                             ; preds = %.invoke, %bb.w, %bb.q, %bb.n, %bb.m, %bb.i, %bb.f
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

3:                                                ; preds = %bb.b
  br i1 %.not220, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE12emplace_backIJRKS3_EEERS3_DpOT_.exit, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit124

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit124: ; preds = %3
  %i.bq = load i64, ptr %i.u, align 8             ; 3 uses
  %i.br = and i64 %i.bq, 1152920405095219200
  %.not.i.i126 = icmp eq i64 %i.br, 1152920405095219200
  br i1 %.not.i.i126, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i127, label %bb.p, !prof !43

bb.p:                                             ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit124
  %i.bs = add i64 %i.bq, 1152920405095219200
  %i.bt = and i64 %i.bs, 1152920405095219200      ; 2 uses
  %i.bu = and i64 %i.bq, -1152920405095219201
  %i.bv = or disjoint i64 %i.bt, %i.bu
  store i64 %i.bv, ptr %i.u, align 8
  %i.bw = icmp eq i64 %i.bt, 0
  br i1 %i.bw, label %bb.q, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i127, !prof !43

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i127 unwind label %bb.o

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i127: ; preds = %bb.q, %bb.p, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit124
  %i.bx = load ptr, ptr %i.aa, align 8, !tbaa !29 ; 4 uses
  store ptr %i.bx, ptr %.sroa.0201.0225, align 8, !tbaa !29
  %i.by = load i64, ptr %i.bx, align 8            ; 3 uses
  %i.bz = lshr i64 %i.by, 40
  %i.ca = trunc nuw nsw i64 %i.bz to i32
  %i.cb = and i32 %i.ca, 1048575                  ; 3 uses
  %i.cc = icmp samesign ult i32 %i.cb, 1048574
  br i1 %i.cc, label %bb.r, label %bb.s, !prof !44

bb.r:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i127
  %i.cd = add nuw nsw i32 %i.cb, 1
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = shl nuw nsw i64 %i.ce, 40
  %i.cg = and i64 %i.by, -1152920405095219201
  %i.ch = or i64 %i.cf, %i.cg
  store i64 %i.ch, ptr %i.bx, align 8
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE12emplace_backIJRKS3_EEERS3_DpOT_.exit

bb.s:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i127
  %i.ci = icmp eq i32 %i.cb, 1048574
  br i1 %i.ci, label %.invoke, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE12emplace_backIJRKS3_EEERS3_DpOT_.exit, !prof !43

bb.t:                                             ; preds = %.lr.ph
  br i1 %i.z, label %bb.u, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE12emplace_backIJRKS3_EEERS3_DpOT_.exit

bb.u:                                             ; preds = %bb.t
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0197.0223, i64 96 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !29
  %.not218 = icmp eq ptr %i.u, %i.ck
  br i1 %.not218, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE12emplace_backIJRKS3_EEERS3_DpOT_.exit, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit157

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit157: ; preds = %bb.u
  %i.cl = load i64, ptr %i.u, align 8             ; 3 uses
  %i.cm = and i64 %i.cl, 1152920405095219200
  %.not.i.i159 = icmp eq i64 %i.cm, 1152920405095219200
  br i1 %.not.i.i159, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i160, label %bb.v, !prof !43

bb.v:                                             ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit157
  %i.cn = add i64 %i.cl, 1152920405095219200
  %i.co = and i64 %i.cn, 1152920405095219200      ; 2 uses
  %i.cp = and i64 %i.cl, -1152920405095219201
  %i.cq = or disjoint i64 %i.co, %i.cp
  store i64 %i.cq, ptr %i.u, align 8
  %i.cr = icmp eq i64 %i.co, 0
  br i1 %i.cr, label %bb.w, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i160, !prof !43

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i160 unwind label %bb.o

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i160: ; preds = %bb.w, %bb.v, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit157
  %i.cs = load ptr, ptr %i.cj, align 8, !tbaa !29 ; 4 uses
  store ptr %i.cs, ptr %.sroa.0201.0225, align 8, !tbaa !29
  %i.ct = load i64, ptr %i.cs, align 8            ; 3 uses
  %i.cu = lshr i64 %i.ct, 40
  %i.cv = trunc nuw nsw i64 %i.cu to i32
  %i.cw = and i32 %i.cv, 1048575                  ; 3 uses
  %i.cx = icmp samesign ult i32 %i.cw, 1048574
  br i1 %i.cx, label %bb.x, label %bb.y, !prof !44

bb.x:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i160
  %i.cy = add nuw nsw i32 %i.cw, 1
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = shl nuw nsw i64 %i.cz, 40
  %i.db = and i64 %i.ct, -1152920405095219201
  %i.dc = or i64 %i.da, %i.db
  store i64 %i.dc, ptr %i.cs, align 8
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE12emplace_backIJRKS3_EEERS3_DpOT_.exit

bb.y:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i160
  %i.dd = icmp eq i32 %i.cw, 1048574
  br i1 %i.dd, label %.invoke, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE12emplace_backIJRKS3_EEERS3_DpOT_.exit, !prof !43

.invoke:                                          ; preds = %bb.y, %bb.s
  %.sink255 = phi i64 [ %i.by, %bb.s ], [ %i.ct, %bb.y ]
  %.sink254 = phi ptr [ %i.bx, %bb.s ], [ %i.cs, %bb.y ] ; 2 uses
  %i.de = or i64 %.sink255, 1152920405095219200
  store i64 %i.de, ptr %.sink254, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %.sink254)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE12emplace_backIJRKS3_EEERS3_DpOT_.exit unwind label %bb.o

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE12emplace_backIJRKS3_EEERS3_DpOT_.exit: ; preds = %.invoke, %bb.n, %bb.y, %bb.x, %bb.s, %bb.r, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i, %3, %bb.u, %bb.t, %bb.c, %bb.d
  %i.df = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0197.0223) #24 ; 2 uses
  %.not217 = icmp eq ptr %i.df, %i.e
  br i1 %.not217, label %._crit_edge, label %.lr.ph

bb.z:                                             ; preds = %._crit_edge228
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dh = load ptr, ptr %2, align 8, !tbaa !59    ; 3 uses
  %i.di = load ptr, ptr %i.dg, align 8, !tbaa !57 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.dh, %i.di
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.z, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.dt, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i ], [ %i.dh, %bb.z ] ; 2 uses
  %i.dj = load ptr, ptr %.05.i.i.i, align 8, !tbaa !29 ; 3 uses
  %i.dk = load i64, ptr %i.dj, align 8            ; 3 uses
  %i.dl = and i64 %i.dk, 1152920405095219200
  %.not.i.i.i.i.i.i = icmp eq i64 %i.dl, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, label %bb.aa, !prof !43

bb.aa:                                            ; preds = %.lr.ph.i.i.i
  %i.dm = add i64 %i.dk, 1152920405095219200
  %i.dn = and i64 %i.dm, 1152920405095219200      ; 2 uses
  %i.do = and i64 %i.dk, -1152920405095219201
  %i.dp = or disjoint i64 %i.dn, %i.do
  store i64 %i.dp, ptr %i.dj, align 8
  %i.dq = icmp eq i64 %i.dn, 0
  br i1 %i.dq, label %bb.ab, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, !prof !43

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dj)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dr = landingpad { ptr, i32 }
          catch ptr null
  %i.ds = extractvalue { ptr, i32 } %i.dr, 0
  call void @__clang_call_terminate(ptr %i.ds) #21
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i: ; preds = %bb.ab, %bb.aa, %.lr.ph.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dt, %i.di
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !59
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %bb.z
  %i.du = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.dh, %bb.z ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.du, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !58
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = ptrtoint ptr %i.du to i64
  %i.dz = sub i64 %i.dx, %i.dy
  call void @_ZdlPvm(ptr noundef nonnull %i.du, i64 noundef %i.dz) #26
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void

bb.ae:                                            ; preds = %._crit_edge228
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.af:                                            ; preds = %bb.o, %bb.ae
  %.pn.pn = phi { ptr, i32 } [ %i.ea, %bb.ae ], [ %i.bp, %bb.o ]
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !59     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !57   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.n, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !29 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8              ; 3 uses
  %i.f = and i64 %i.e, 1152920405095219200
  %.not.i.i.i.i.i = icmp eq i64 %i.f, 1152920405095219200
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i, label %bb.b, !prof !43

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = add i64 %i.e, 1152920405095219200
  %i.h = and i64 %i.g, 1152920405095219200        ; 2 uses
  %i.i = and i64 %i.e, -1152920405095219201
  %i.j = or disjoint i64 %i.h, %i.i
  store i64 %i.j, ptr %i.d, align 8
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %bb.c, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i, !prof !43

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #21
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i: ; preds = %bb.c, %bb.b, %.lr.ph.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !59
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.o = phi ptr [ %.pr, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.o, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !58
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #26
  br label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit, %bb.e
  ret void
}

declare void @_ZN4cvc58internal6theory5arith10mkEqualityERKNS0_12NodeTemplateILb1EEES6_(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate.0") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal6theory5arithlsERSoRKNS2_14BoundInferenceE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(64) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.14, i64 noundef 7) ; 0 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !19
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 240
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !101  ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load i8, ptr %i.h, align 8, !tbaa !107
  %.not.i1.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i1.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 67
  %i.k = load i8, ptr %i.j, align 1, !tbaa !17
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.g)
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef signext i8 %i.n(ptr noundef nonnull align 8 dereferenceable(570) %i.g, i8 noundef signext 10), !inline_history !93
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi i8 [ %i.k, %bb.c ], [ %i.o, %bb.d ]
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %.0.i.i.i)
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p) ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !36   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.not32 = icmp eq ptr %i.s, %i.t
  br i1 %.not32, label %._crit_edge, label %_ZN4cvc58internallsERSoNS0_12NodeTemplateILb0EEE.exit

._crit_edge:                                      ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  ret ptr %0

_ZN4cvc58internallsERSoNS0_12NodeTemplateILb0EEE.exit: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %.sroa.029.033 = phi ptr [ %i.at, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i ], [ %i.s, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.029.033, i64 32
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.15, i64 noundef 1) ; 0 uses
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !29
  tail call void @_ZNK4cvc58internal4expr9NodeValue8toStreamERSo(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.16, i64 noundef 4) ; 0 uses
end_hunk_0
