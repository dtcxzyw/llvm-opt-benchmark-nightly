inline.NumInlined: 4488
inline.NumDeleted: 1655
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4cvc58internal6theory7strings13TheoryStrings13eqNotifyMergeENS0_12NodeTemplateILb0EEES5_:bb.a
          to label %_ZN4cvc57context10ContextObj11makeCurrentEv.exit.i49 unwind label %bb.cd

_ZN4cvc57context10ContextObj11makeCurrentEv.exit.i49: ; preds = %bb.bt, %_ZN4cvc57context3CDOINS_8internal12NodeTemplateILb1EEEEcvS4_Ev.exit48
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ao, i64 184 ; 2 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !22 ; 4 uses
  %.not.i.i50 = icmp eq ptr %i.hu, %i.gy
  br i1 %.not.i.i50, label %_ZN4cvc57context3CDOINS_8internal12NodeTemplateILb1EEEE3setERKS4_.exit56, label %bb.bu, !prof !247

bb.bu:                                            ; preds = %_ZN4cvc57context10ContextObj11makeCurrentEv.exit.i49
  %i.hv = load i64, ptr %i.hu, align 8            ; 3 uses
  %i.hw = and i64 %i.hv, 1152920405095219200
  %.not.i.i.i51 = icmp eq i64 %i.hw, 1152920405095219200
  br i1 %.not.i.i.i51, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i52, label %bb.bv, !prof !247

bb.bv:                                            ; preds = %bb.bu
  %i.hx = add i64 %i.hv, 1152920405095219200
  %i.hy = and i64 %i.hx, 1152920405095219200      ; 2 uses
  %i.hz = and i64 %i.hv, -1152920405095219201
  %i.ia = or disjoint i64 %i.hy, %i.hz
  store i64 %i.ia, ptr %i.hu, align 8
  %i.ib = icmp eq i64 %i.hy, 0
  br i1 %i.ib, label %bb.bw, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i52, !prof !247

bb.bw:                                            ; preds = %bb.bv
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.hu)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i52 unwind label %bb.cd

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i52: ; preds = %bb.bw, %bb.bv, %bb.bu
  store ptr %i.gy, ptr %i.ht, align 8, !tbaa !22
  %i.ic = load i64, ptr %i.gy, align 8            ; 3 uses
  %i.id = lshr i64 %i.ic, 40
  %i.ie = trunc nuw nsw i64 %i.id to i32
  %i.if = and i32 %i.ie, 1048575                  ; 3 uses
  %i.ig = icmp samesign ult i32 %i.if, 1048574
  br i1 %i.ig, label %bb.bx, label %bb.by, !prof !251

bb.bx:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i52
  %i.ih = add nuw nsw i32 %i.if, 1
  %i.ii = zext nneg i32 %i.ih to i64
  %i.ij = shl nuw nsw i64 %i.ii, 40
  %i.ik = and i64 %i.ic, -1152920405095219201
  %i.il = or i64 %i.ij, %i.ik
  store i64 %i.il, ptr %i.gy, align 8
  br label %_ZN4cvc57context3CDOINS_8internal12NodeTemplateILb1EEEE3setERKS4_.exit56

bb.by:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i52
  %i.im = icmp eq i32 %i.if, 1048574
  br i1 %i.im, label %bb.bz, label %_ZN4cvc57context3CDOINS_8internal12NodeTemplateILb1EEEE3setERKS4_.exit56, !prof !247

bb.bz:                                            ; preds = %bb.by
  %i.in = or i64 %i.ic, 1152920405095219200
  store i64 %i.in, ptr %i.gy, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gy)
          to label %_ZN4cvc57context3CDOINS_8internal12NodeTemplateILb1EEEE3setERKS4_.exit56 unwind label %bb.cd

_ZN4cvc57context3CDOINS_8internal12NodeTemplateILb1EEEE3setERKS4_.exit56: ; preds = %bb.by, %bb.bx, %_ZN4cvc57context10ContextObj11makeCurrentEv.exit.i49, %bb.bz
  %i.io = load i64, ptr %i.gy, align 8            ; 3 uses
  %i.ip = and i64 %i.io, 1152920405095219200
  %.not.i.i57 = icmp eq i64 %i.ip, 1152920405095219200
  br i1 %.not.i.i57, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit58, label %bb.ca, !prof !247

bb.ca:                                            ; preds = %_ZN4cvc57context3CDOINS_8internal12NodeTemplateILb1EEEE3setERKS4_.exit56
  %i.iq = add i64 %i.io, 1152920405095219200
  %i.ir = and i64 %i.iq, 1152920405095219200      ; 2 uses
  %i.is = and i64 %i.io, -1152920405095219201
  %i.it = or disjoint i64 %i.ir, %i.is
  store i64 %i.it, ptr %i.gy, align 8
  %i.iu = icmp eq i64 %i.ir, 0
  br i1 %i.iu, label %bb.cb, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit58, !prof !247

bb.cb:                                            ; preds = %bb.ca
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gy)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit58 unwind label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.iv = landingpad { ptr, i32 }
          catch ptr null
  %i.iw = extractvalue { ptr, i32 } %i.iv, 0
  call void @__clang_call_terminate(ptr %i.iw) #31
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit58: ; preds = %_ZN4cvc57context3CDOINS_8internal12NodeTemplateILb1EEEE3setERKS4_.exit56, %bb.ca, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.ce

bb.cd:                                            ; preds = %bb.bz, %bb.bw, %bb.bt
  %i.ix = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %common.resume

bb.ce:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EE6isNullEv.exit47, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit58, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  ret void
}

declare void @_ZN4cvc58internal6theory7strings11EagerSolver13eqNotifyMergeEPNS2_7EqcInfoENS0_12NodeTemplateILb0EEES5_S7_(ptr noundef nonnull align 8 dereferenceable(296), ptr noundef, ptr noundef align 8, ptr noundef, ptr noundef align 8) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory7strings13TheoryStrings16computeCareGraphEv(ptr noundef nonnull align 8 dereferenceable(6200) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::tuple.1279", align 8   ; 4 uses
  %2 = alloca %"class.std::tuple.1275", align 1   ; 3 uses
  %3 = alloca %"class.std::tuple.1279", align 8   ; 4 uses
  %4 = alloca %"class.std::tuple.1275", align 1   ; 3 uses
  %5 = alloca %"class.cvc5::internal::NodeTemplate.814", align 8 ; 3 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate.814", align 8 ; 4 uses
  %7 = alloca %"class.std::tuple.1297", align 8   ; 4 uses
  %8 = alloca %"class.std::tuple.1275", align 1   ; 3 uses
  %9 = alloca %"class.cvc5::internal::options::ioutils::Scope", align 8 ; 6 uses
  %10 = alloca %"class.std::map.1044", align 8    ; 11 uses
  %11 = alloca %"class.std::map.1050", align 8    ; 12 uses
  %12 = alloca %"class.cvc5::internal::NodeTemplate.814", align 8 ; 11 uses
  %13 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %14 = alloca %"class.std::vector.9", align 8    ; 12 uses
  %15 = alloca %"class.cvc5::internal::NodeTemplate.814", align 8 ; 6 uses
  %16 = alloca %"class.cvc5::internal::NodeTemplate.814", align 8 ; 2 uses
  %17 = alloca %"class.cvc5::internal::NodeTemplate.814", align 8 ; 2 uses
  %18 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 9 uses
  %19 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %20 = alloca %"class.cvc5::internal::FatalStream", align 1 ; 6 uses
  %21 = alloca %"struct.std::pair.1055", align 8  ; 10 uses
  %22 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 8 uses
  store i32 0, ptr %i.a, align 8, !tbaa !581
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr null, ptr %i.b, align 8, !tbaa !560
  %i.c = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  store ptr %i.a, ptr %i.c, align 8, !tbaa !582
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %i.a, ptr %i.d, align 8, !tbaa !583
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i64 0, ptr %i.e, align 8, !tbaa !584
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.f = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 9 uses
  store i32 0, ptr %i.f, align 8, !tbaa !581
  %i.g = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  store ptr null, ptr %i.g, align 8, !tbaa !560
  %i.h = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %i.f, ptr %i.h, align 8, !tbaa !582
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %i.f, ptr %i.i, align 8, !tbaa !583
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 40
  store i64 0, ptr %i.j, align 8, !tbaa !584
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.l = invoke noundef nonnull align 8 dereferenceable(74) ptr @_ZNK4cvc58internal6theory7strings12TermRegistry16getFunctionTermsEv(ptr noundef nonnull align 8 dereferenceable(992) %i.k)
          to label %bb.b unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !703  ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !701  ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3
  %.not188 = icmp eq ptr %i.o, %i.p
  br i1 %.not188, label %._crit_edge, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit72.lr.ph

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit72.lr.ph: ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 3 uses
  br label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit72

._crit_edge:                                      ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit110, %bb.b
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !582  ; 2 uses
  %.not185 = icmp eq ptr %i.y, %i.a
  br i1 %.not185, label %._crit_edge187, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit123.lr.ph

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit123.lr.ph: ; preds = %._crit_edge
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 6168
  br label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit123

bb.c:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit72: ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit72.lr.ph, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit110
  %i.ab = phi i64 [ 0, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit72.lr.ph ], [ %i.ki, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit110 ]
  %.028184 = phi i32 [ 0, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit72.lr.ph ], [ %i.kh, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit110 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.ac = load ptr, ptr %i.m, align 8, !tbaa !701
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ab
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !578
  store ptr %i.ae, ptr %12, align 8, !tbaa !578
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  invoke void @_ZNK4cvc58internal12NodeTemplateILb0EE11getOperatorEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit72
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.r, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.r ], [ 0, %bb.d ] ; 4 uses
  %.027 = phi i1 [ %spec.select, %bb.r ], [ false, %bb.d ] ; 2 uses
  %i.af = load ptr, ptr %12, align 8, !tbaa !578
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = and i32 %i.ai, 1023                     ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 1023
  %i.al = select i1 %i.ak, i32 -1, i32 %i.aj
  %i.am = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.al)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.an = icmp eq i32 %i.am, 2
  %i.ao = load i64, ptr %i.ag, align 8
  %i.ap = lshr i64 %i.ao, 32
  %i.aq = and i64 %i.ap, 67108863
  %i.ar = sext i1 %i.an to i64
  %i.as = add nsw i64 %i.aq, %i.ar
  %i.at = and i64 %i.as, 4294967295
  %i.au = icmp samesign ugt i64 %i.at, %indvars.iv
  br i1 %i.au, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.027, label %bb.w, label %bb.bu

bb.h:                                             ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit72
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.i:                                             ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backEOS3_.exit, %bb.e
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  %i.ax = load ptr, ptr %i.u, align 8, !tbaa !577
  call void @llvm.experimental.noalias.scope.decl(metadata !827)
  %i.ay = load ptr, ptr %12, align 8, !tbaa !578, !noalias !827 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !noalias !827
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = and i32 %i.bb, 1023                     ; 2 uses
  %i.bd = icmp eq i32 %i.bc, 1023
  %i.be = select i1 %i.bd, i32 -1, i32 %i.bc
  %i.bf = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.be)
          to label %bb.k unwind label %bb.s

bb.k:                                             ; preds = %bb.j
  %i.bg = icmp eq i32 %i.bf, 2
  %23 = zext i1 %i.bg to i64
  %spec.select.i.i = add nuw nsw i64 %indvars.iv, %23
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %sext = shl nuw i64 %spec.select.i.i, 32
  %24 = ashr exact i64 %sext, 29
  %25 = getelementptr inbounds i8, ptr %i.bh, i64 %24
  %i.bi = load ptr, ptr %25, align 8, !tbaa !20, !noalias !827
  store ptr %i.bi, ptr %16, align 8, !tbaa !578, !alias.scope !827
  invoke void @_ZNK4cvc58internal6theory2eq14EqualityEngine17getRepresentativeENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate.814") align 8 %15, ptr noundef nonnull align 8 dereferenceable(1784) %i.ax, ptr noundef nonnull align 8 %16)
          to label %bb.l unwind label %bb.t

bb.l:                                             ; preds = %bb.k
  %i.bj = load ptr, ptr %i.v, align 8, !tbaa !703 ; 6 uses
  %i.bk = load ptr, ptr %i.w, align 8, !tbaa !702
  %.not.i.i = icmp eq ptr %i.bj, %i.bk
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bl = load ptr, ptr %15, align 8, !tbaa !578
  store ptr %i.bl, ptr %i.bj, align 8, !tbaa !578
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.bm, ptr %i.v, align 8, !tbaa !703
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backEOS3_.exit

bb.n:                                             ; preds = %bb.l
  %i.bn = load ptr, ptr %14, align 8, !tbaa !701  ; 7 uses
  %i.bo = ptrtoint ptr %i.bj to i64               ; 2 uses
  %i.bp = ptrtoint ptr %i.bn to i64               ; 3 uses
  %i.bq = sub i64 %i.bo, %i.bp                    ; 4 uses
  %i.br = icmp eq i64 %i.bq, 9223372036854775800
  br i1 %i.br, label %bb.o, label %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.139) #30
          to label %.noexc75 unwind label %.loopexit.split-lp

.noexc75:                                         ; preds = %bb.o
  unreachable

_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.n
  %i.bs = ashr exact i64 %i.bq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bs, i64 1)
  %i.bt = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bs ; 2 uses
  %i.bu = icmp ult i64 %i.bt, %i.bs
  %i.bv = call i64 @llvm.umin.i64(i64 %i.bt, i64 1152921504606846975)
  %i.bw = select i1 %i.bu, i64 1152921504606846975, i64 %i.bv ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bx = shl nuw nsw i64 %i.bw, 3
  %i.by = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bx) #29
          to label %.noexc76 unwind label %.loopexit ; 8 uses

.noexc76:                                         ; preds = %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bq
  %i.ca = load ptr, ptr %15, align 8, !tbaa !578
  store ptr %i.ca, ptr %i.bz, align 8, !tbaa !578
  %.not13.i.i.i.i.i.i.i.i = icmp eq ptr %i.bn, %i.bj
  br i1 %.not13.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.noexc76
  %i.cb = ptrtoaddr ptr %i.by to i64
  %i.cc = add i64 %i.bo, -8
  %i.cd = sub i64 %i.cc, %i.bp                    ; 2 uses
  %i.ce = lshr i64 %i.cd, 3
  %i.cf = add nuw nsw i64 %i.ce, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cd, 24
  %i.cg = sub i64 %i.bp, %i.cb
  %diff.check = icmp ugt i64 %i.cg, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.preheader242, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.cf, 4611686018427387900     ; 3 uses
  %i.ch = shl i64 %n.vec, 3                       ; 2 uses
  %i.ci = getelementptr i8, ptr %i.by, i64 %i.ch  ; 2 uses
  %i.cj = getelementptr i8, ptr %i.bn, i64 %i.ch
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ck = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.by, i64 %i.ck ; 2 uses
  %next.gep239 = getelementptr i8, ptr %i.bn, i64 %i.ck ; 2 uses
  %i.cl = getelementptr i8, ptr %next.gep239, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep239, align 8, !tbaa !578
  %wide.load240 = load <2 x ptr>, ptr %i.cl, align 8, !tbaa !578
  %i.cm = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !578
  store <2 x ptr> %wide.load240, ptr %i.cm, align 8, !tbaa !578
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !830

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cf, %n.vec
  br i1 %cmp.n, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader242

.lr.ph.i.i.i.i.i.i.i.i.preheader242:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.015.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ci, %middle.block ]
  %.01214.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.cj, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader242, %.lr.ph.i.i.i.i.i.i.i.i
  %.015.i.i.i.i.i.i.i.i = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.015.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader242 ] ; 2 uses
  %.01214.i.i.i.i.i.i.i.i = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.01214.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader242 ] ; 2 uses
  %i.co = load ptr, ptr %.01214.i.i.i.i.i.i.i.i, align 8, !tbaa !578
  store ptr %i.co, ptr %.015.i.i.i.i.i.i.i.i, align 8, !tbaa !578
  %i.cp = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.cp, %i.bj
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !833

_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %.noexc76
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.by, %.noexc76 ], [ %i.ci, %middle.block ], [ %i.cq, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i, i64 8
  %.not.i35.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i35.i.i.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.bq) #27
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.p, %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i.i
  store ptr %i.by, ptr %14, align 8, !tbaa !701
  store ptr %i.cr, ptr %i.v, align 8, !tbaa !703
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bw
  store ptr %i.cs, ptr %i.w, align 8, !tbaa !702
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  %i.ct = load ptr, ptr %i.u, align 8, !tbaa !577
  call void @llvm.experimental.noalias.scope.decl(metadata !834)
  %i.cu = load ptr, ptr %12, align 8, !tbaa !578, !noalias !834 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !noalias !834
  %i.cx = trunc i64 %i.cw to i32
  %i.cy = and i32 %i.cx, 1023                     ; 2 uses
  %i.cz = icmp eq i32 %i.cy, 1023
  %i.da = select i1 %i.cz, i32 -1, i32 %i.cy
  %i.db = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.da)
          to label %bb.q unwind label %bb.i

bb.q:                                             ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backEOS3_.exit
  %i.dc = icmp eq i32 %i.db, 2
  %26 = zext i1 %i.dc to i64
  %spec.select.i.i77 = add nuw nsw i64 %indvars.iv, %26
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %sext220 = shl nuw i64 %spec.select.i.i77, 32
  %27 = ashr exact i64 %sext220, 29
  %28 = getelementptr inbounds i8, ptr %i.dd, i64 %27
  %i.de = load ptr, ptr %28, align 8, !tbaa !20, !noalias !834
  store ptr %i.de, ptr %17, align 8, !tbaa !578, !alias.scope !834
  %i.df = invoke noundef zeroext i1 @_ZNK4cvc58internal6theory2eq14EqualityEngine13isTriggerTermENS0_12NodeTemplateILb0EEENS1_8TheoryIdE(ptr noundef nonnull align 8 dereferenceable(1784) %i.ct, ptr noundef nonnull align 8 %17, i32 noundef 12)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %bb.q
  %spec.select = select i1 %i.df, i1 true, i1 %.027
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.e, !llvm.loop !837

bb.s:                                             ; preds = %bb.j
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %bb.k
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit:                                        ; preds = %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split-lp:                               ; preds = %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.t, %bb.s
  %.pn55.pn = phi { ptr, i32 } [ %i.dg, %bb.s ], [ %i.dh, %bb.t ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %bb.bz

bb.v:                                             ; preds = %bb.q
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.w:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  %i.dj = load ptr, ptr %12, align 8, !tbaa !578  ; 5 uses
  store ptr %i.dj, ptr %19, align 8, !tbaa !22
  %i.dk = load i64, ptr %i.dj, align 8            ; 3 uses
  %i.dl = lshr i64 %i.dk, 40
  %i.dm = trunc nuw nsw i64 %i.dl to i32
  %i.dn = and i32 %i.dm, 1048575                  ; 3 uses
  %i.do = icmp samesign ult i32 %i.dn, 1048574
  br i1 %i.do, label %bb.x, label %bb.y, !prof !251

bb.x:                                             ; preds = %bb.w
  %i.dp = add nuw nsw i32 %i.dn, 1
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = shl nuw nsw i64 %i.dq, 40
  %i.ds = and i64 %i.dk, -1152920405095219201
  %i.dt = or i64 %i.dr, %i.ds
  store i64 %i.dt, ptr %i.dj, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit

bb.y:                                             ; preds = %bb.w
  %i.du = icmp eq i32 %i.dn, 1048574
  br i1 %i.du, label %bb.z, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit, !prof !247

bb.z:                                             ; preds = %bb.y
  %i.dv = or i64 %i.dk, 1152920405095219200
  store i64 %i.dv, ptr %i.dj, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dj)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit unwind label %bb.ak

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit: ; preds = %bb.y, %bb.x, %bb.z
  invoke void @_ZN4cvc58internal6theory7strings5utils18getOwnerStringTypeENS0_12NodeTemplateILb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %18, ptr noundef nonnull align 8 %19)
          to label %bb.aa unwind label %bb.al

bb.aa:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit
  %i.dw = load ptr, ptr %19, align 8, !tbaa !22   ; 3 uses
  %i.dx = load i64, ptr %i.dw, align 8            ; 3 uses
  %i.dy = and i64 %i.dx, 1152920405095219200
  %.not.i.i81 = icmp eq i64 %i.dy, 1152920405095219200
  br i1 %.not.i.i81, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.ab, !prof !247

bb.ab:                                            ; preds = %bb.aa
  %i.dz = add i64 %i.dx, 1152920405095219200
  %i.ea = and i64 %i.dz, 1152920405095219200      ; 2 uses
  %i.eb = and i64 %i.dx, -1152920405095219201
  %i.ec = or disjoint i64 %i.ea, %i.eb
  store i64 %i.ec, ptr %i.dw, align 8
  %i.ed = icmp eq i64 %i.ea, 0
  br i1 %i.ed, label %bb.ac, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !247

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dw)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ee = landingpad { ptr, i32 }
          catch ptr null
  %i.ef = extractvalue { ptr, i32 } %i.ee, 0
  call void @__clang_call_terminate(ptr %i.ef) #31
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.aa, %bb.ab, %bb.ac
  %i.eg = invoke noundef zeroext i1 @_ZNK4cvc58internal8TypeNode12isStringLikeEv(ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.ae unwind label %bb.am

bb.ae:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  br i1 %i.eg, label %.critedge66, label %bb.af, !prof !247

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #28
  invoke void @_ZN4cvc58internal11FatalStreamC1EPKcS3_i(ptr noundef nonnull align 1 dereferenceable(1) %20, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4cvc58internal6theory7strings13TheoryStrings16computeCareGraphEv, ptr noundef nonnull @.str.13, i32 noundef 1118)
          to label %bb.ag unwind label %bb.an

bb.ag:                                            ; preds = %bb.af
  %i.eh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4cvc58internal11FatalStream6streamEv(ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.ah unwind label %bb.ao     ; 11 uses

bb.ah:                                            ; preds = %bb.ag
  %i.ei = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.eh, ptr noundef nonnull @.str.52, i64 noundef 16)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.ao ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.ah
  %i.ej = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.eh, ptr noundef nonnull @.str.91, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit84 unwind label %bb.ao ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit84: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ek = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.eh, ptr noundef nonnull @.str.54, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit86 unwind label %bb.ao ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit86: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit84
  %i.el = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.eh, ptr noundef nonnull @.str.92, i64 noundef 40)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit88 unwind label %bb.ao ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit88: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit86
  %i.em = load ptr, ptr %12, align 8, !tbaa !578
  invoke void @_ZNK4cvc58internal4expr9NodeValue8toStreamERSo(ptr noundef nonnull align 8 dereferenceable(24) %i.em, ptr noundef nonnull align 8 dereferenceable(8) %i.eh)
          to label %_ZN4cvc58internallsERSoNS0_12NodeTemplateILb0EEE.exit unwind label %bb.ao

_ZN4cvc58internallsERSoNS0_12NodeTemplateILb0EEE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit88
  %i.en = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.eh, ptr noundef nonnull @.str.93, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit91 unwind label %bb.ao ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit91: ; preds = %_ZN4cvc58internallsERSoNS0_12NodeTemplateILb0EEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.eo = load ptr, ptr %i.eh, align 8, !tbaa !17
  %i.ep = getelementptr i8, ptr %i.eo, i64 -24
  %i.eq = load i64, ptr %i.ep, align 8
  %i.er = getelementptr inbounds i8, ptr %i.eh, i64 %i.eq
  invoke void @_ZN4cvc58internal7options7ioutils5ScopeC1ERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(46) %9, ptr noundef nonnull align 8 dereferenceable(216) %i.er)
          to label %.noexc92 unwind label %bb.ao

.noexc92:                                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit91
  %i.es = load ptr, ptr %i.eh, align 8, !tbaa !17
  %i.et = getelementptr i8, ptr %i.es, i64 -24
  %i.eu = load i64, ptr %i.et, align 8
  %i.ev = getelementptr inbounds i8, ptr %i.eh, i64 %i.eu
  invoke void @_ZN4cvc58internal7options7ioutils14applyDagThreshERSt8ios_basel(ptr noundef nonnull align 8 dereferenceable(216) %i.ev, i64 noundef 0)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %.noexc92
  %i.ew = load ptr, ptr %18, align 8, !tbaa !599
  invoke void @_ZNK4cvc58internal4expr9NodeValue8toStreamERSo(ptr noundef nonnull align 8 dereferenceable(24) %i.ew, ptr noundef nonnull align 8 dereferenceable(8) %i.eh)
          to label %.critedge unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.noexc92
  %i.ex = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4cvc58internal7options7ioutils5ScopeD1Ev(ptr noundef nonnull align 8 dead_on_return(46) dereferenceable(46) %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %.body

.critedge:                                        ; preds = %bb.ai
  call void @_ZN4cvc58internal7options7ioutils5ScopeD1Ev(ptr noundef nonnull align 8 dead_on_return(46) dereferenceable(46) %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @_ZN4cvc58internal11FatalStreamD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %20) #31
  unreachable

bb.ak:                                            ; preds = %bb.z
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.al:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit
  %i.ez = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #28
  br label %bb.bt

bb.am:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.an:                                            ; preds = %bb.af
  %i.fb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  br label %bb.bs

bb.ao:                                            ; preds = %bb.ag, %bb.ah, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit84, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit86, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit91, %_ZN4cvc58internallsERSoNS0_12NodeTemplateILb0EEE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit88
  %i.fc = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body

.critedge66:                                      ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #28
  %i.fd = load ptr, ptr %18, align 8, !tbaa !599  ; 5 uses
  store ptr %i.fd, ptr %21, align 8, !tbaa !599
end_hunk_0
