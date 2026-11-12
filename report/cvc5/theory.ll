Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/theory?download=true
inline.NumInlined: 1261
inline.NumDeleted: 470
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK4cvc58internal6theory6Theory20collectAssertedTermsERSt3setINS0_12NodeTemplateILb1EEESt4lessIS5_ESaIS5_EEbRKS3_INS0_4kind6Kind_tES6_ISC_ESaISC_EE:bb.a
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !3

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  br i1 %2, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %._crit_edge
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !94   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !140  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !140  ; 2 uses
  %.not1619 = icmp eq ptr %i.j, %i.l
  br i1 %.not1619, label %.loopexit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.b, %.lr.ph22
  %.sroa.09.020 = phi ptr [ %i.n, %.lr.ph22 ], [ %i.j, %bb.b ] ; 2 uses
  %i.m = load ptr, ptr %.sroa.09.020, align 8, !tbaa !98
  store ptr %i.m, ptr %5, align 8, !tbaa !98
  call void @_ZNK4cvc58internal6theory6Theory12collectTermsENS0_12NodeTemplateILb0EEERSt3setINS3_ILb1EEESt4lessIS6_ESaIS6_EERKS5_INS0_4kind6Kind_tES7_ISD_ESaISD_EE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %3)
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.09.020, i64 8 ; 2 uses
  %.not16 = icmp eq ptr %i.n, %i.l
  br i1 %.not16, label %.loopexit, label %.lr.ph22, !llvm.loop !4

.loopexit:                                        ; preds = %.lr.ph22, %bb.b, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK4cvc58internal6theory6Theory12collectTermsENS0_12NodeTemplateILb0EEERSt3setINS3_ILb1EEESt4lessIS6_ESaIS6_EERKS5_INS0_4kind6Kind_tES7_ISD_ESaISD_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(280) %0, ptr nofree noundef readonly align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.300", align 8   ; 13 uses
  %5 = alloca %"class.cvc5::internal::NodeTemplate.327", align 8 ; 7 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.a = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.f, !prof !105

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #26
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30
          to label %bb.d unwind label %bb.e       ; 3 uses

bb.d:                                             ; preds = %bb.c
  store i64 1152920405095219200, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store ptr %i.d, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !103
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #26
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #26
  br label %.body

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.g = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !103
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !108  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !141
  %.not.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = load ptr, ptr %1, align 8, !tbaa !98
  store ptr %i.l, ptr %i.i, align 8, !tbaa !98
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit

bb.h:                                             ; preds = %bb.f
  %i.m = load ptr, ptr %4, align 8, !tbaa !109    ; 7 uses
  %i.n = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64                 ; 4 uses
  %i.p = sub i64 %i.n, %i.o                       ; 3 uses
  %i.q = icmp eq i64 %i.p, 9223372036854775800
  br i1 %i.q, label %bb.i, label %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #28
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.r = ashr exact i64 %i.p, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  %i.s = add nsw i64 %.sroa.speculated.i.i.i, %i.r ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.s, i64 1152921504606846975)
  %i.v = select i1 %i.t, i64 1152921504606846975, i64 %i.u ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.v, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #30
          to label %.noexc29 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 8 uses

.noexc29:                                         ; preds = %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.p
  %i.z = load ptr, ptr %1, align 8, !tbaa !98
  store ptr %i.z, ptr %i.y, align 8, !tbaa !98
  %.not13.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.i
  br i1 %.not13.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc29
  %i.aa = ptrtoaddr ptr %i.x to i64
  %i.ab = add i64 %i.n, -8
  %i.ac = sub i64 %i.ab, %i.o                     ; 2 uses
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ac, 72
  %i.af = sub i64 %i.o, %i.aa
  %diff.check = icmp ugt i64 %i.af, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader98, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ae, 4611686018427387900     ; 3 uses
  %i.ag = shl i64 %n.vec, 3                       ; 2 uses
  %i.ah = getelementptr i8, ptr %i.x, i64 %i.ag   ; 2 uses
  %i.ai = getelementptr i8, ptr %i.m, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.aj ; 2 uses
  %next.gep94 = getelementptr i8, ptr %i.m, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep94, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep94, align 8, !tbaa !98
  %wide.load95 = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !98
  %i.al = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !98
  store <2 x ptr> %wide.load95, ptr %i.al, align 8, !tbaa !98
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !198

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader98

.lr.ph.i.i.i.i.i.i.i.preheader98:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.015.i.i.i.i.i.i.i.ph = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  %.01214.i.i.i.i.i.i.i.ph = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader98, %.lr.ph.i.i.i.i.i.i.i
  %.015.i.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ], [ %.015.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader98 ] ; 2 uses
  %.01214.i.i.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i.i ], [ %.01214.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader98 ] ; 2 uses
  %i.an = load ptr, ptr %.01214.i.i.i.i.i.i.i, align 8, !tbaa !98
  store ptr %i.an, ptr %.015.i.i.i.i.i.i.i, align 8, !tbaa !98
  %i.ao = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ao, %i.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !199

_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc29
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.x, %.noexc29 ], [ %i.ah, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ]
  %.not.i35.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i35.i.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i
  %i.aq = load ptr, ptr %i.j, align 8, !tbaa !141
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = sub i64 %i.ar, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.as) #29
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.j, %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i
  store ptr %i.x, ptr %4, align 8, !tbaa !109
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.at, ptr %i.j, align 8, !tbaa !141
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.g, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  %.pn = phi ptr [ %i.i, %bb.g ], [ %.0.lcssa.i.i.i.i.i.i.i, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit

_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit, %thread-pre-split
  %i.bb = phi ptr [ %i.au, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit ], [ %i.eu, %thread-pre-split ]
  %.sroa.063.0 = phi ptr [ %i.g, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit ], [ %spec.select, %thread-pre-split ] ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -8 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !98 ; 2 uses
  %.not.i30 = icmp eq ptr %.sroa.063.0, %i.bd
  %spec.select = select i1 %.not.i30, ptr %.sroa.063.0, ptr %i.bd, !prof !90 ; 17 uses
  store ptr %i.bc, ptr %i.h, align 8, !tbaa !108
  %i.be = load i64, ptr %spec.select, align 8     ; 4 uses
  %i.bf = lshr i64 %i.be, 40
  %i.bg = trunc nuw nsw i64 %i.bf to i32
  %i.bh = and i32 %i.bg, 1048575                  ; 3 uses
  %i.bi = icmp samesign ult i32 %i.bh, 1048574
  br i1 %i.bi, label %bb.k, label %bb.l, !prof !104

bb.k:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit
  %i.bj = add nuw nsw i32 %i.bh, 1
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = shl nuw nsw i64 %i.bk, 40
  %i.bm = and i64 %i.be, -1152920405095219201
  %i.bn = or i64 %i.bl, %i.bm                     ; 2 uses
  store i64 %i.bn, ptr %spec.select, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit

bb.l:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit
  %i.bo = icmp eq i32 %i.bh, 1048574
  br i1 %i.bo, label %bb.m, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit, !prof !90

bb.m:                                             ; preds = %bb.l
  %i.bp = or i64 %i.be, 1152920405095219200
  store i64 %i.bp, ptr %spec.select, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %spec.select)
          to label %._ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit_crit_edge: ; preds = %bb.m
  %.pre.pre = load i64, ptr %spec.select, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit: ; preds = %._ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit_crit_edge, %bb.l, %bb.k
  %.pre = phi i64 [ %.pre.pre, %._ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit_crit_edge ], [ %i.be, %bb.l ], [ %i.bn, %bb.k ] ; 4 uses
  %i.bq = load ptr, ptr %i.av, align 8, !tbaa !203 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not10.i.i.i, label %_ZNSt3setIN4cvc58internal12NodeTemplateILb1EEESt4lessIS3_ESaIS3_EE4findERKS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit
  %i.br = and i64 %.pre, 1099511627775            ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.n ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.n ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !89
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = and i64 %i.bu, 1099511627775
  %i.bw = icmp samesign ult i64 %i.bv, %i.br      ; 2 uses
  %.19.i.i.i = select i1 %i.bw, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.bw, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !111 ; 2 uses
  %.not.i.i.i32 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i32, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRKS3_.exit.i.i, label %bb.n, !llvm.loop !200

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRKS3_.exit.i.i: ; preds = %bb.n
  %i.bx = icmp eq ptr %.19.i.i.i, %i.aw
  br i1 %i.bx, label %_ZNSt3setIN4cvc58internal12NodeTemplateILb1EEESt4lessIS3_ESaIS3_EE4findERKS3_.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRKS3_.exit.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !89
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = and i64 %i.ca, 1099511627775
  %i.cc = icmp samesign ult i64 %i.br, %i.cb
  br label %_ZNSt3setIN4cvc58internal12NodeTemplateILb1EEESt4lessIS3_ESaIS3_EE4findERKS3_.exit

_ZNSt3setIN4cvc58internal12NodeTemplateILb1EEESt4lessIS3_ESaIS3_EE4findERKS3_.exit: ; preds = %bb.o, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRKS3_.exit.i.i, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit
  %.sroa.0.0.i.i = phi i1 [ true, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit ], [ true, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRKS3_.exit.i.i ], [ %i.cc, %bb.o ]
  %i.cd = and i64 %.pre, 1152920405095219200
  %.not.i.i33 = icmp eq i64 %i.cd, 1152920405095219200
  br i1 %.not.i.i33, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.p, !prof !90

bb.p:                                             ; preds = %_ZNSt3setIN4cvc58internal12NodeTemplateILb1EEESt4lessIS3_ESaIS3_EE4findERKS3_.exit
  %i.ce = add i64 %.pre, 1152920405095219200
  %i.cf = and i64 %i.ce, 1152920405095219200      ; 2 uses
  %i.cg = and i64 %.pre, -1152920405095219201
  %i.ch = or disjoint i64 %i.cf, %i.cg
  store i64 %i.ch, ptr %spec.select, align 8
  %i.ci = icmp eq i64 %i.cf, 0
  br i1 %i.ci, label %bb.q, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !90

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %spec.select)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cj = landingpad { ptr, i32 }
          catch ptr null
  %i.ck = extractvalue { ptr, i32 } %i.cj, 0
  call void @__clang_call_terminate(ptr %i.ck) #27
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %_ZNSt3setIN4cvc58internal12NodeTemplateILb1EEESt4lessIS3_ESaIS3_EE4findERKS3_.exit, %bb.p, %bb.q
  br i1 %.sroa.0.0.i.i, label %bb.s, label %thread-pre-split

bb.s:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %spec.select, i64 8 ; 4 uses
  %i.cm = load i64, ptr %i.cl, align 8
  %i.cn = trunc i64 %i.cm to i32
  %i.co = and i32 %i.cn, 1023                     ; 3 uses
  %i.cp = load ptr, ptr %i.ax, align 8, !tbaa !203 ; 2 uses
  %.not10.i.i.i34 = icmp eq ptr %i.cp, null
  br i1 %.not10.i.i.i34, label %_ZNKSt3setIN4cvc58internal4kind6Kind_tESt4lessIS3_ESaIS3_EE4findERKS3_.exit.thread, label %.lr.ph.i.i.i35

.lr.ph.i.i.i35:                                   ; preds = %bb.s, %.lr.ph.i.i.i35
  %.012.i.i.i36 = phi ptr [ %.1.i.i.i41, %.lr.ph.i.i.i35 ], [ %i.cp, %bb.s ] ; 3 uses
  %.0811.i.i.i37 = phi ptr [ %.19.i.i.i38, %.lr.ph.i.i.i35 ], [ %i.ay, %bb.s ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.012.i.i.i36, i64 32
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !205
  %i.cs = icmp slt i32 %i.cr, %i.co               ; 2 uses
  %.19.i.i.i38 = select i1 %i.cs, ptr %.0811.i.i.i37, ptr %.012.i.i.i36 ; 3 uses
  %.1.in.v.i.i.i39 = select i1 %i.cs, i64 24, i64 16
  %.1.in.i.i.i40 = getelementptr inbounds nuw i8, ptr %.012.i.i.i36, i64 %.1.in.v.i.i.i39
  %.1.i.i.i41 = load ptr, ptr %.1.in.i.i.i40, align 8, !tbaa !111 ; 2 uses
  %.not.i.i.i42 = icmp eq ptr %.1.i.i.i41, null
  br i1 %.not.i.i.i42, label %_ZNKSt8_Rb_treeIN4cvc58internal4kind6Kind_tES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRKS3_.exit.i.i, label %.lr.ph.i.i.i35, !llvm.loop !201

_ZNKSt8_Rb_treeIN4cvc58internal4kind6Kind_tES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRKS3_.exit.i.i: ; preds = %.lr.ph.i.i.i35
  %i.ct = icmp eq ptr %.19.i.i.i38, %i.ay
  br i1 %i.ct, label %_ZNKSt3setIN4cvc58internal4kind6Kind_tESt4lessIS3_ESaIS3_EE4findERKS3_.exit.thread, label %_ZNKSt3setIN4cvc58internal4kind6Kind_tESt4lessIS3_ESaIS3_EE4findERKS3_.exit

_ZNKSt3setIN4cvc58internal4kind6Kind_tESt4lessIS3_ESaIS3_EE4findERKS3_.exit: ; preds = %_ZNKSt8_Rb_treeIN4cvc58internal4kind6Kind_tES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRKS3_.exit.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %.19.i.i.i38, i64 32
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !205
  %i.cw = icmp slt i32 %i.co, %i.cv
  br i1 %i.cw, label %_ZNKSt3setIN4cvc58internal4kind6Kind_tESt4lessIS3_ESaIS3_EE4findERKS3_.exit.thread, label %bb.ac

_ZNKSt3setIN4cvc58internal4kind6Kind_tESt4lessIS3_ESaIS3_EE4findERKS3_.exit.thread: ; preds = %_ZNKSt8_Rb_treeIN4cvc58internal4kind6Kind_tES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRKS3_.exit.i.i, %bb.s, %_ZNKSt3setIN4cvc58internal4kind6Kind_tESt4lessIS3_ESaIS3_EE4findERKS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %spec.select, ptr %5, align 8, !tbaa !89
  %i.cx = load i64, ptr %spec.select, align 8     ; 3 uses
  %i.cy = lshr i64 %i.cx, 40
  %i.cz = trunc nuw nsw i64 %i.cy to i32
  %i.da = and i32 %i.cz, 1048575                  ; 3 uses
  %i.db = icmp samesign ult i32 %i.da, 1048574
  br i1 %i.db, label %bb.t, label %bb.u, !prof !104

bb.t:                                             ; preds = %_ZNKSt3setIN4cvc58internal4kind6Kind_tESt4lessIS3_ESaIS3_EE4findERKS3_.exit.thread
  %i.dc = add nuw nsw i32 %i.da, 1
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = shl nuw nsw i64 %i.dd, 40
  %i.df = and i64 %i.cx, -1152920405095219201
  %i.dg = or i64 %i.de, %i.df
  store i64 %i.dg, ptr %spec.select, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit46

bb.u:                                             ; preds = %_ZNKSt3setIN4cvc58internal4kind6Kind_tESt4lessIS3_ESaIS3_EE4findERKS3_.exit.thread
  %i.dh = icmp eq i32 %i.da, 1048574
  br i1 %i.dh, label %bb.v, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit46, !prof !90

bb.v:                                             ; preds = %bb.u
  %i.di = or i64 %i.cx, 1152920405095219200
  store i64 %i.di, ptr %spec.select, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %spec.select)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit46 unwind label %bb.z

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit46: ; preds = %bb.u, %bb.t, %bb.v
  %i.dj = invoke { ptr, i8 } @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE16_M_insert_uniqueIS3_EESt4pairISt17_Rb_tree_iteratorIS3_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %_ZNSt3setIN4cvc58internal12NodeTemplateILb1EEESt4lessIS3_ESaIS3_EE6insertEOS3_.exit unwind label %bb.aa ; 0 uses

_ZNSt3setIN4cvc58internal12NodeTemplateILb1EEESt4lessIS3_ESaIS3_EE6insertEOS3_.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit46
  %i.dk = load ptr, ptr %5, align 8, !tbaa !89    ; 3 uses
  %i.dl = load i64, ptr %i.dk, align 8            ; 3 uses
  %i.dm = and i64 %i.dl, 1152920405095219200
  %.not.i.i48 = icmp eq i64 %i.dm, 1152920405095219200
  br i1 %.not.i.i48, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit49, label %bb.w, !prof !90

bb.w:                                             ; preds = %_ZNSt3setIN4cvc58internal12NodeTemplateILb1EEESt4lessIS3_ESaIS3_EE6insertEOS3_.exit
  %i.dn = add i64 %i.dl, 1152920405095219200
  %i.do = and i64 %i.dn, 1152920405095219200      ; 2 uses
  %i.dp = and i64 %i.dl, -1152920405095219201
  %i.dq = or disjoint i64 %i.do, %i.dp
  store i64 %i.dq, ptr %i.dk, align 8
  %i.dr = icmp eq i64 %i.do, 0
  br i1 %i.dr, label %bb.x, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit49, !prof !90

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dk)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit49 unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ds = landingpad { ptr, i32 }
          catch ptr null
  %i.dt = extractvalue { ptr, i32 } %i.ds, 0
  call void @__clang_call_terminate(ptr %i.dt) #27
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit49: ; preds = %_ZNSt3setIN4cvc58internal12NodeTemplateILb1EEESt4lessIS3_ESaIS3_EE6insertEOS3_.exit, %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.ac

bb.z:                                             ; preds = %bb.v
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit46
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #26
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pn22 = phi { ptr, i32 } [ %i.dv, %bb.aa ], [ %i.du, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %.body

bb.ac:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit49, %_ZNKSt3setIN4cvc58internal4kind6Kind_tESt4lessIS3_ESaIS3_EE4findERKS3_.exit
  switch i32 %i.co, label %bb.ad [
    i32 20, label %bb.af
    i32 5, label %bb.af
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.dw = load ptr, ptr %i.az, align 8, !tbaa !62, !nonnull !63, !align !64
  store ptr %spec.select, ptr %6, align 8, !tbaa !98
  %i.dx = invoke noundef i32 @_ZNK4cvc58internal3Env8theoryOfENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(696) %i.dw, ptr noundef nonnull align 8 %6)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %bb.ad
  %i.dy = load i32, ptr %i.ba, align 8, !tbaa !65
  %i.dz = icmp eq i32 %i.dx, %i.dy
  br i1 %i.dz, label %bb.af, label %thread-pre-split

bb.af:                                            ; preds = %bb.ac, %bb.ac, %bb.ae
  %i.ea = load i64, ptr %i.cl, align 8
  %i.eb = trunc i64 %i.ea to i32
  %i.ec = and i32 %i.eb, 1023
  %i.ed = invoke noundef zeroext i1 @_ZN4cvc58internal4kind13isClosureKindENS1_6Kind_tE(i32 noundef %i.ec)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ag:                                            ; preds = %bb.af
  br i1 %i.ed, label %thread-pre-split, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ee = load ptr, ptr %i.h, align 8, !tbaa !140
  %i.ef = load i64, ptr %i.cl, align 8
  %i.eg = trunc i64 %i.ef to i32
  %i.eh = and i32 %i.eg, 1023                     ; 2 uses
  %i.ei = icmp eq i32 %i.eh, 1023
  %i.ej = select i1 %i.ei, i32 -1, i32 %i.eh
  %i.ek = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.ej)
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ai:                                            ; preds = %bb.ah
  %i.el = icmp eq i32 %i.ek, 2
  %spec.select.v.i.i = select i1 %i.el, i64 32, i64 24
  %spec.select.i.i51 = getelementptr inbounds nuw i8, ptr %spec.select, i64 %spec.select.v.i.i
  %i.em = getelementptr inbounds nuw i8, ptr %spec.select, i64 24
  %7 = load i64, ptr %i.cl, align 8
  %8 = lshr i64 %7, 32
  %9 = and i64 %8, 67108863
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %9
  %i.eo = load ptr, ptr %4, align 8, !tbaa !140   ; 2 uses
  %i.ep = ptrtoint ptr %i.ee to i64
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = sub i64 %i.ep, %i.eq
  %i.es = getelementptr inbounds i8, ptr %i.eo, i64 %i.er
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE15_M_range_insertINS1_4expr9NodeValue8iteratorIS3_EEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EET_SF_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.es, ptr nonnull %spec.select.i.i51, ptr nonnull %i.en)
          to label %thread-pre-split unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.af, %bb.ad, %bb.ai, %bb.ah, %bb.m, %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %bb.i
  %lpad.loopexit.split-lp97 = landingpad { ptr, i32 }
          cleanup
  br label %.body

thread-pre-split:                                 ; preds = %bb.ag, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, %bb.ae, %bb.ai
  %i.et = load ptr, ptr %4, align 8, !tbaa !140   ; 4 uses
  %i.eu = load ptr, ptr %i.h, align 8, !tbaa !140 ; 2 uses
  %i.ev = icmp eq ptr %i.et, %i.eu
  br i1 %i.ev, label %bb.aj, label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit, !llvm.loop !202

bb.aj:                                            ; preds = %thread-pre-split
  %.not.i.i.i54 = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i54, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ew = load ptr, ptr %i.j, align 8, !tbaa !141
  %i.ex = ptrtoint ptr %i.ew to i64
  %i.ey = ptrtoint ptr %i.et to i64
  %i.ez = sub i64 %i.ex, %i.ey
  call void @_ZdlPvm(ptr noundef nonnull %i.et, i64 noundef %i.ez) #29
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit: ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ab, %bb.e
  %.pn25.pn.pn = phi { ptr, i32 } [ %i.f, %bb.e ], [ %.pn22, %bb.ab ], [ %lpad.loopexit.split-lp97, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.fa = load ptr, ptr %4, align 8, !tbaa !109   ; 3 uses
  %.not.i.i.i55 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i55, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit56, label %bb.al

bb.al:                                            ; preds = %.body
  %i.fb = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !141
  %i.fd = ptrtoint ptr %i.fc to i64
  %i.fe = ptrtoint ptr %i.fa to i64
  %i.ff = sub i64 %i.fd, %i.fe
  call void @_ZdlPvm(ptr noundef nonnull %i.fa, i64 noundef %i.ff) #29
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit56

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit56: ; preds = %.body, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %.pn25.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK4cvc58internal6theory6Theory28collectAssertedTermsForModelERSt3setINS0_12NodeTemplateILb1EEESt4lessIS5_ESaIS5_EEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %4 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94
  %i.c = tail call noundef ptr @_ZN4cvc58internal6theory11TheoryState8getModelEv(ptr noundef nonnull align 8 dereferenceable(160) %i.b)
  %i.d = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK4cvc58internal6theory11TheoryModel18getIrrelevantKindsEv(ptr noundef nonnull align 8 dereferenceable(968) %i.c) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !84   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !84   ; 2 uses
  %.not17.i = icmp eq ptr %i.f, %i.h
  br i1 %.not17.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.013.018.i = phi ptr [ %i.j, %.lr.ph.i ], [ %i.f, %bb.a ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208)
  %i.i = load ptr, ptr %.sroa.013.018.i, align 8, !tbaa !89, !noalias !208
  store ptr %i.i, ptr %3, align 8, !tbaa !98, !alias.scope !208
  call void @_ZNK4cvc58internal6theory6Theory12collectTermsENS0_12NodeTemplateILb0EEERSt3setINS3_ILb1EEESt4lessIS6_ESaIS6_EERKS5_INS0_4kind6Kind_tES7_ISD_ESaISD_EE(ptr noundef nonnull readonly align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 %3, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.d)
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.013.018.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.j, %i.h
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !3

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  br i1 %2, label %bb.b, label %_ZNK4cvc58internal6theory6Theory20collectAssertedTermsERSt3setINS0_12NodeTemplateILb1EEESt4lessIS5_ESaIS5_EEbRKS3_INS0_4kind6Kind_tES6_ISC_ESaISC_EE.exit

bb.b:                                             ; preds = %._crit_edge.i
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !94   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !140  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !140  ; 2 uses
  %.not1619.i = icmp eq ptr %i.m, %i.o
  br i1 %.not1619.i, label %_ZNK4cvc58internal6theory6Theory20collectAssertedTermsERSt3setINS0_12NodeTemplateILb1EEESt4lessIS5_ESaIS5_EEbRKS3_INS0_4kind6Kind_tES6_ISC_ESaISC_EE.exit, label %.lr.ph22.i

.lr.ph22.i:                                       ; preds = %bb.b, %.lr.ph22.i
  %.sroa.09.020.i = phi ptr [ %i.q, %.lr.ph22.i ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = load ptr, ptr %.sroa.09.020.i, align 8, !tbaa !98
  store ptr %i.p, ptr %4, align 8, !tbaa !98
  call void @_ZNK4cvc58internal6theory6Theory12collectTermsENS0_12NodeTemplateILb0EEERSt3setINS3_ILb1EEESt4lessIS6_ESaIS6_EERKS5_INS0_4kind6Kind_tES7_ISD_ESaISD_EE(ptr noundef nonnull readonly align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.d)
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.09.020.i, i64 8 ; 2 uses
  %.not16.i = icmp eq ptr %i.q, %i.o
  br i1 %.not16.i, label %_ZNK4cvc58internal6theory6Theory20collectAssertedTermsERSt3setINS0_12NodeTemplateILb1EEESt4lessIS5_ESaIS5_EEbRKS3_INS0_4kind6Kind_tES6_ISC_ESaISC_EE.exit, label %.lr.ph22.i, !llvm.loop !4

_ZNK4cvc58internal6theory6Theory20collectAssertedTermsERSt3setINS0_12NodeTemplateILb1EEESt4lessIS5_ESaIS5_EEbRKS3_INS0_4kind6Kind_tES6_ISC_ESaISC_EE.exit: ; preds = %.lr.ph22.i, %._crit_edge.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

declare noundef ptr @_ZN4cvc58internal6theory11TheoryState8getModelEv(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZNK4cvc58internal6theory11TheoryModel18getIrrelevantKindsEv(ptr noundef nonnull align 8 dereferenceable(968)) local_unnamed_addr #3

declare noundef i32 @_ZNK4cvc58internal3Env8theoryOfENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(696), ptr noundef align 8) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN4cvc58internal6theory6Theory18collectModelValuesEPNS1_11TheoryModelERKSt3setINS0_12NodeTemplateILb1EEESt4lessIS7_ESaIS7_EE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2) unnamed_addr #8 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4cvc58internal6theory6Theory8ppAssertENS0_9TrustNodeERNS1_20TrustSubstitutionMapE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 dereferenceable(608) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cvc5::internal::NodeTemplate.327", align 8 ; 4 uses
  %4 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %5 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %8 = alloca %"class.cvc5::internal::TrustNode", align 8 ; 5 uses
  %9 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %10 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %11 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %12 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %13 = alloca %"class.cvc5::internal::TrustNode", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZNK4cvc58internal9TrustNode7getNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate.327") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.a = load ptr, ptr %3, align 8, !tbaa !89     ; 5 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = and i64 %i.b, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.c, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.b, !prof !90

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.b, 1152920405095219200
  %i.e = and i64 %i.d, 1152920405095219200        ; 2 uses
  %i.f = and i64 %i.b, -1152920405095219201
  %i.g = or disjoint i64 %i.e, %i.f
  store i64 %i.g, ptr %i.a, align 8
  %i.h = icmp eq i64 %i.e, 0
  br i1 %i.h, label %bb.c, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !90

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #27
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 10 uses
  %i.l = load i64, ptr %i.k, align 8
  %i.m = and i64 %i.l, 1023
  %i.n = icmp eq i64 %i.m, 5
  br i1 %i.n, label %bb.e, label %_ZN4cvc58internal9TrustNodeD2Ev.exit

bb.e:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.o = call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef 5)
  %i.p = icmp eq i32 %i.o, 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 10 uses
  %i.r = zext i1 %i.p to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !103, !noalias !229
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i64, ptr %i.u, align 8
  %i.w = trunc i64 %i.v to i32
  %i.x = and i32 %i.w, 1023
  %i.y = call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.x)
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %.critedge, label %.critedge.thread

.critedge:                                        ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.experimental.noalias.scope.decl(metadata !230)
  %i.ab = load i64, ptr %i.k, align 8, !noalias !230
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = and i32 %i.ac, 1023                     ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 1023
  %i.af = select i1 %i.ae, i32 -1, i32 %i.ad
  %i.ag = call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.af)
  %i.ah = icmp eq i32 %i.ag, 2
  %i.ai = zext i1 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !103, !noalias !230
end_hunk_0
begin_hunk_1_@_ZN4cvc58internal6theory6Theory8ppAssertENS0_9TrustNodeERNS1_20TrustSubstitutionMapE:bb.a
  %i.fs = and i64 %i.fr, 1152920405095219200
  %.not.i.i.i70 = icmp eq i64 %i.fs, 1152920405095219200
  br i1 %.not.i.i.i70, label %_ZN4cvc58internal9TrustNodeD2Ev.exit, label %bb.v, !prof !90

bb.v:                                             ; preds = %bb.u
  %i.ft = add i64 %i.fr, 1152920405095219200
  %i.fu = and i64 %i.ft, 1152920405095219200      ; 2 uses
  %i.fv = and i64 %i.fr, -1152920405095219201
  %i.fw = or disjoint i64 %i.fu, %i.fv
  store i64 %i.fw, ptr %i.fq, align 8
  %i.fx = icmp eq i64 %i.fu, 0
  br i1 %i.fx, label %bb.w, label %_ZN4cvc58internal9TrustNodeD2Ev.exit, !prof !90

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fq)
          to label %_ZN4cvc58internal9TrustNodeD2Ev.exit unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fy = landingpad { ptr, i32 }
          catch ptr null
  %i.fz = extractvalue { ptr, i32 } %i.fy, 0
  call void @__clang_call_terminate(ptr %i.fz) #27
  unreachable

bb.y:                                             ; preds = %bb.t
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

_ZN4cvc58internal9TrustNodeD2Ev.exit:             ; preds = %.critedge.thread, %bb.w, %bb.v, %bb.u, %bb.m, %bb.l, %bb.k, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, %.critedge44
  %.028 = phi i1 [ false, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit ], [ true, %bb.w ], [ false, %.critedge44 ], [ true, %bb.k ], [ true, %bb.l ], [ true, %bb.m ], [ true, %bb.u ], [ true, %bb.v ], [ false, %.critedge.thread ]
  ret i1 %.028

bb.z:                                             ; preds = %bb.y, %bb.o
  %.sink = phi ptr [ %13, %bb.y ], [ %8, %bb.o ]
  %.pn39.pn.pn = phi { ptr, i32 } [ %i.ga, %bb.y ], [ %i.cs, %bb.o ]
  call void @_ZN4cvc58internal9TrustNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.sink) #26
  resume { ptr, i32 } %.pn39.pn.pn
}

declare void @_ZNK4cvc58internal9TrustNode7getNodeEv(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate.327") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN4cvc58internal6theory9Valuation18isLegalEliminationENS0_12NodeTemplateILb0EEES4_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef align 8, ptr noundef align 8) local_unnamed_addr #3

declare noundef ptr @_ZN4cvc58internal6theory20TrustSubstitutionMap21addSubstitutionSolvedENS0_12NodeTemplateILb0EEES4_NS0_9TrustNodeE(ptr noundef nonnull align 8 dereferenceable(608), ptr noundef align 8, ptr noundef align 8, ptr noundef align 8) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4cvc58internal9TrustNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89   ; 3 uses
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = and i64 %i.c, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.d, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.b, !prof !90

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %i.c, 1152920405095219200
  %i.f = and i64 %i.e, 1152920405095219200        ; 2 uses
  %i.g = and i64 %i.c, -1152920405095219201
  %i.h = or disjoint i64 %i.f, %i.g
  store i64 %i.h, ptr %i.b, align 8
  %i.i = icmp eq i64 %i.f, 0
  br i1 %i.i, label %bb.c, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !90

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #27
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory6Theory15entailmentCheckENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.std::pair.483") align 8 captures(none) initializes((0, 1), (8, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cvc5::internal::NodeTemplate.327", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248)
  %i.a = load ptr, ptr @_ZN4cvc58internal12NodeTemplateILb1EE6s_nullE, align 8, !tbaa !89, !noalias !248 ; 13 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !89, !alias.scope !248
  %i.b = load i64, ptr %i.a, align 8, !noalias !248 ; 4 uses
  %i.c = lshr i64 %i.b, 40
  %i.d = trunc nuw nsw i64 %i.c to i32
  %i.e = and i32 %i.d, 1048575                    ; 3 uses
  %i.f = icmp samesign ult i32 %i.e, 1048574
  br i1 %i.f, label %bb.b, label %bb.c, !prof !104

bb.b:                                             ; preds = %bb.a
  %i.g = add nuw nsw i32 %i.e, 1
  %i.h = zext nneg i32 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 40
  %i.j = and i64 %i.b, -1152920405095219201
  %i.k = or i64 %i.i, %i.j                        ; 2 uses
  store i64 %i.k, ptr %i.a, align 8, !noalias !248
  br label %_ZN4cvc58internal12NodeTemplateILb1EE4nullEv.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq i32 %i.e, 1048574
  br i1 %i.l, label %bb.d, label %_ZN4cvc58internal12NodeTemplateILb1EE4nullEv.exit, !prof !90

bb.d:                                             ; preds = %bb.c
  %i.m = or i64 %i.b, 1152920405095219200
  store i64 %i.m, ptr %i.a, align 8, !noalias !248
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !248
  %.pre = load i64, ptr %i.a, align 8, !noalias !249
  br label %_ZN4cvc58internal12NodeTemplateILb1EE4nullEv.exit

_ZN4cvc58internal12NodeTemplateILb1EE4nullEv.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.n = phi i64 [ %i.k, %bb.b ], [ %i.b, %bb.c ], [ %.pre, %bb.d ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  store i8 0, ptr %0, align 8, !tbaa !251, !alias.scope !249
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.o, align 8, !tbaa !89, !alias.scope !249
  %i.p = lshr i64 %i.n, 40
  %i.q = trunc nuw nsw i64 %i.p to i32
  %i.r = and i32 %i.q, 1048575                    ; 3 uses
  %i.s = icmp samesign ult i32 %i.r, 1048574
  br i1 %i.s, label %bb.e, label %bb.f, !prof !104

bb.e:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EE4nullEv.exit
  %i.t = add nuw nsw i32 %i.r, 1
  %i.u = zext nneg i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 40
  %i.w = and i64 %i.n, -1152920405095219201
  %i.x = or i64 %i.v, %i.w                        ; 2 uses
  store i64 %i.x, ptr %i.a, align 8, !noalias !249
  br label %_ZSt9make_pairIbN4cvc58internal12NodeTemplateILb1EEEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS5_INS6_IT0_E4typeEE6__typeEEOS7_OSC_.exit

bb.f:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EE4nullEv.exit
  %i.y = icmp eq i32 %i.r, 1048574
  br i1 %i.y, label %bb.g, label %_ZSt9make_pairIbN4cvc58internal12NodeTemplateILb1EEEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS5_INS6_IT0_E4typeEE6__typeEEOS7_OSC_.exit, !prof !90

bb.g:                                             ; preds = %bb.f
  %i.z = or i64 %i.n, 1152920405095219200
  store i64 %i.z, ptr %i.a, align 8, !noalias !249
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %._ZSt9make_pairIbN4cvc58internal12NodeTemplateILb1EEEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS5_INS6_IT0_E4typeEE6__typeEEOS7_OSC_.exit_crit_edge unwind label %bb.k

._ZSt9make_pairIbN4cvc58internal12NodeTemplateILb1EEEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS5_INS6_IT0_E4typeEE6__typeEEOS7_OSC_.exit_crit_edge: ; preds = %bb.g
  %.pre1 = load i64, ptr %i.a, align 8
  br label %_ZSt9make_pairIbN4cvc58internal12NodeTemplateILb1EEEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS5_INS6_IT0_E4typeEE6__typeEEOS7_OSC_.exit

_ZSt9make_pairIbN4cvc58internal12NodeTemplateILb1EEEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS5_INS6_IT0_E4typeEE6__typeEEOS7_OSC_.exit: ; preds = %._ZSt9make_pairIbN4cvc58internal12NodeTemplateILb1EEEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS5_INS6_IT0_E4typeEE6__typeEEOS7_OSC_.exit_crit_edge, %bb.f, %bb.e
  %i.aa = phi i64 [ %.pre1, %._ZSt9make_pairIbN4cvc58internal12NodeTemplateILb1EEEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS5_INS6_IT0_E4typeEE6__typeEEOS7_OSC_.exit_crit_edge ], [ %i.n, %bb.f ], [ %i.x, %bb.e ] ; 3 uses
  %i.ab = and i64 %i.aa, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.ab, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.h, !prof !90

bb.h:                                             ; preds = %_ZSt9make_pairIbN4cvc58internal12NodeTemplateILb1EEEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS5_INS6_IT0_E4typeEE6__typeEEOS7_OSC_.exit
  %i.ac = add i64 %i.aa, 1152920405095219200
  %i.ad = and i64 %i.ac, 1152920405095219200      ; 2 uses
  %i.ae = and i64 %i.aa, -1152920405095219201
  %i.af = or disjoint i64 %i.ad, %i.ae
  store i64 %i.af, ptr %i.a, align 8
  %i.ag = icmp eq i64 %i.ad, 0
  br i1 %i.ag, label %bb.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !90

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #27
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %_ZSt9make_pairIbN4cvc58internal12NodeTemplateILb1EEEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS5_INS6_IT0_E4typeEE6__typeEEOS7_OSC_.exit, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.k:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %i.aj
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory6Theory15addCarePairArgsENS0_12NodeTemplateILb0EEES4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(280) %0, ptr nofree noundef readonly align 8 captures(none) %1, ptr nofree noundef readonly align 8 captures(none) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.cvc5::internal::theory::CarePair", align 8 ; 6 uses
  %4 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %5 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %8 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %9 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %10 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %11 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !98
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = trunc i64 %i.c to i32
  %i.e = and i32 %i.d, 1023                       ; 2 uses
  %i.f = icmp eq i32 %i.e, 1023
  %i.g = select i1 %i.f, i32 -1, i32 %i.e
  %i.h = tail call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.g)
  %i.i = icmp eq i32 %i.h, 2
  %12 = load i64, ptr %i.b, align 8
  %13 = lshr i64 %12, 32
  %14 = and i64 %13, 67108863
  %15 = sext i1 %i.i to i64
  %16 = add nsw i64 %14, %15
  %17 = and i64 %16, 4294967295                   ; 2 uses
  %.not = icmp eq i64 %17, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %.critedge.thread56, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %.critedge.thread56
  %.02258 = phi i64 [ 0, %.lr.ph ], [ %i.bo, %.critedge.thread56 ] ; 3 uses
  %i.o = load ptr, ptr %1, align 8, !tbaa !98, !noalias !257 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i64, ptr %i.p, align 8, !noalias !257
  %i.r = trunc i64 %i.q to i32
  %i.s = and i32 %i.r, 1023                       ; 2 uses
  %i.t = icmp eq i32 %i.s, 1023
  %i.u = select i1 %i.t, i32 -1, i32 %i.s
  %i.v = call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.u), !noalias !257
  %i.w = icmp eq i32 %i.v, 2
  %i.x = zext i1 %i.w to i64
  %spec.select.i.i = add nuw nsw i64 %.02258, %i.x
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %sext = shl i64 %spec.select.i.i, 32
  %i.z = ashr exact i64 %sext, 29
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !103, !noalias !257 ; 3 uses
  %i.ac = load ptr, ptr %2, align 8, !tbaa !98, !noalias !258 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !258
  %i.af = trunc i64 %i.ae to i32
  %i.ag = and i32 %i.af, 1023                     ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 1023
  %i.ai = select i1 %i.ah, i32 -1, i32 %i.ag
  %i.aj = call noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.ai)
  %i.ak = icmp eq i32 %i.aj, 2
  %i.al = zext i1 %i.ak to i64
  %spec.select.i.i45 = add nuw nsw i64 %.02258, %i.al
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %sext57 = shl i64 %spec.select.i.i45, 32
  %i.an = ashr exact i64 %sext57, 29
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !103, !noalias !258 ; 3 uses
  %i.aq = load ptr, ptr %i.j, align 8, !tbaa !93
  store ptr %i.ab, ptr %4, align 8, !tbaa !98
  %i.ar = load i32, ptr %i.k, align 8, !tbaa !65
  %i.as = call noundef zeroext i1 @_ZNK4cvc58internal6theory2eq14EqualityEngine13isTriggerTermENS0_12NodeTemplateILb0EEENS1_8TheoryIdE(ptr noundef nonnull align 8 dereferenceable(1784) %i.aq, ptr noundef nonnull align 8 %4, i32 noundef %i.ar)
  br i1 %i.as, label %bb.c, label %.critedge.thread56

bb.c:                                             ; preds = %bb.b
  %i.at = load ptr, ptr %i.j, align 8, !tbaa !93
  store ptr %i.ap, ptr %5, align 8, !tbaa !98
  %i.au = load i32, ptr %i.k, align 8, !tbaa !65
  %i.av = call noundef zeroext i1 @_ZNK4cvc58internal6theory2eq14EqualityEngine13isTriggerTermENS0_12NodeTemplateILb0EEENS1_8TheoryIdE(ptr noundef nonnull align 8 dereferenceable(1784) %i.at, ptr noundef nonnull align 8 %5, i32 noundef %i.au)
  br i1 %i.av, label %.critedge, label %.critedge.thread56

.critedge:                                        ; preds = %bb.c
  %i.aw = load ptr, ptr %i.j, align 8, !tbaa !93
  store ptr %i.ab, ptr %6, align 8, !tbaa !98
  store ptr %i.ap, ptr %7, align 8, !tbaa !98
  %i.ax = call noundef zeroext i1 @_ZNK4cvc58internal6theory2eq14EqualityEngine8areEqualENS0_12NodeTemplateILb0EEES5_(ptr noundef nonnull align 8 dereferenceable(1784) %i.aw, ptr noundef nonnull align 8 %6, ptr noundef nonnull align 8 %7)
  br i1 %i.ax, label %.critedge.thread56, label %bb.d

bb.d:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.ay = load ptr, ptr %i.j, align 8, !tbaa !93
  store ptr %i.ab, ptr %9, align 8, !tbaa !98
  %i.az = load i32, ptr %i.k, align 8, !tbaa !65
  call void @_ZNK4cvc58internal6theory2eq14EqualityEngine28getTriggerTermRepresentativeENS0_12NodeTemplateILb0EEENS1_8TheoryIdE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %8, ptr noundef nonnull align 8 dereferenceable(1784) %i.ay, ptr noundef nonnull align 8 %9, i32 noundef %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.ba = load ptr, ptr %i.j, align 8, !tbaa !93
  store ptr %i.ap, ptr %11, align 8, !tbaa !98
  %i.bb = load i32, ptr %i.k, align 8, !tbaa !65
  call void @_ZNK4cvc58internal6theory2eq14EqualityEngine28getTriggerTermRepresentativeENS0_12NodeTemplateILb0EEENS1_8TheoryIdE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %10, ptr noundef nonnull align 8 dereferenceable(1784) %i.ba, ptr noundef nonnull align 8 %11, i32 noundef %i.bb)
  %i.bc = load ptr, ptr %8, align 8, !tbaa !98    ; 3 uses
  %i.bd = load ptr, ptr %10, align 8, !tbaa !98   ; 3 uses
  %i.be = load ptr, ptr %i.l, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.bf = load i32, ptr %i.k, align 8, !tbaa !65
  %i.bg = load i64, ptr %i.bc, align 8
  %i.bh = and i64 %i.bg, 1099511627775
  %i.bi = load i64, ptr %i.bd, align 8
  %i.bj = and i64 %i.bi, 1099511627775
  %i.bk = icmp samesign ult i64 %i.bh, %i.bj      ; 2 uses
  %i.bl = select i1 %i.bk, ptr %i.bc, ptr %i.bd
  store ptr %i.bl, ptr %3, align 8, !tbaa !98
  %i.bm = select i1 %i.bk, ptr %i.bd, ptr %i.bc
  store ptr %i.bm, ptr %i.m, align 8, !tbaa !98
  store i32 %i.bf, ptr %i.n, align 8, !tbaa !113
  %i.bn = call { ptr, i8 } @_ZNSt8_Rb_treeIN4cvc58internal6theory8CarePairES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE16_M_insert_uniqueIS3_EESt4pairISt17_Rb_tree_iteratorIS3_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.be, ptr noundef nonnull align 8 dereferenceable(20) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %.critedge.thread56

.critedge.thread56:                               ; preds = %bb.c, %bb.b, %bb.d, %.critedge
  %i.bo = add nuw nsw i64 %.02258, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bo, %17
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !256
}

declare noundef zeroext i1 @_ZNK4cvc58internal6theory2eq14EqualityEngine13isTriggerTermENS0_12NodeTemplateILb0EEENS1_8TheoryIdE(ptr noundef nonnull align 8 dereferenceable(1784), ptr noundef align 8, i32 noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK4cvc58internal6theory2eq14EqualityEngine8areEqualENS0_12NodeTemplateILb0EEES5_(ptr noundef nonnull align 8 dereferenceable(1784), ptr noundef align 8, ptr noundef align 8) local_unnamed_addr #3

declare void @_ZNK4cvc58internal6theory2eq14EqualityEngine28getTriggerTermRepresentativeENS0_12NodeTemplateILb0EEENS1_8TheoryIdE(ptr dead_on_unwind writable sret(%"class.cvc5::internal::NodeTemplate") align 8, ptr noundef nonnull align 8 dereferenceable(1784), ptr noundef align 8, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory6Theory19processCarePairArgsENS0_12NodeTemplateILb0EEES4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(280) %0, ptr nofree noundef readonly align 8 captures(none) %1, ptr nofree noundef readonly align 8 captures(none) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %4 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %5 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !98
  store ptr %i.c, ptr %3, align 8, !tbaa !98
  %i.d = load ptr, ptr %2, align 8, !tbaa !98
  store ptr %i.d, ptr %4, align 8, !tbaa !98
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(160) %i.b, ptr noundef nonnull align 8 %3, ptr noundef nonnull align 8 %4)
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %1, align 8, !tbaa !98
  store ptr %i.i, ptr %5, align 8, !tbaa !98
  %i.j = load ptr, ptr %2, align 8, !tbaa !98
  store ptr %i.j, ptr %6, align 8, !tbaa !98
  call void @_ZN4cvc58internal6theory6Theory15addCarePairArgsENS0_12NodeTemplateILb0EEES4_(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 %5, ptr noundef nonnull align 8 %6)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4cvc58internal6theory6Theory15areCareDisequalENS0_12NodeTemplateILb0EEES4_(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr nofree noundef readonly align 8 captures(none) %1, ptr nofree noundef readonly align 8 captures(none) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %4 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %5 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %8 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %9 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %10 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %11 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %12 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93
  %i.c = load ptr, ptr %1, align 8, !tbaa !98
  store ptr %i.c, ptr %3, align 8, !tbaa !98
  %i.d = load ptr, ptr %2, align 8, !tbaa !98
  store ptr %i.d, ptr %4, align 8, !tbaa !98
  %i.e = call noundef zeroext i1 @_ZNK4cvc58internal6theory2eq14EqualityEngine11areDisequalENS0_12NodeTemplateILb0EEES5_b(ptr noundef nonnull align 8 dereferenceable(1784) %i.b, ptr noundef nonnull align 8 %3, ptr noundef nonnull align 8 %4, i1 noundef zeroext false)
  br i1 %i.e, label %.thread23, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !93
  %i.g = load ptr, ptr %1, align 8, !tbaa !98
  store ptr %i.g, ptr %5, align 8, !tbaa !98
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !65
  %i.j = call noundef zeroext i1 @_ZNK4cvc58internal6theory2eq14EqualityEngine13isTriggerTermENS0_12NodeTemplateILb0EEENS1_8TheoryIdE(ptr noundef nonnull align 8 dereferenceable(1784) %i.f, ptr noundef nonnull align 8 %5, i32 noundef %i.i)
  br i1 %i.j, label %bb.c, label %.thread23

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !93
  %i.l = load ptr, ptr %2, align 8, !tbaa !98
  store ptr %i.l, ptr %6, align 8, !tbaa !98
  %i.m = load i32, ptr %i.h, align 8, !tbaa !65
  %i.n = call noundef zeroext i1 @_ZNK4cvc58internal6theory2eq14EqualityEngine13isTriggerTermENS0_12NodeTemplateILb0EEENS1_8TheoryIdE(ptr noundef nonnull align 8 dereferenceable(1784) %i.k, ptr noundef nonnull align 8 %6, i32 noundef %i.m)
  br i1 %i.n, label %bb.d, label %.thread23

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !93
  %i.p = load ptr, ptr %1, align 8, !tbaa !98
  store ptr %i.p, ptr %8, align 8, !tbaa !98
  %i.q = load i32, ptr %i.h, align 8, !tbaa !65
  call void @_ZNK4cvc58internal6theory2eq14EqualityEngine28getTriggerTermRepresentativeENS0_12NodeTemplateILb0EEENS1_8TheoryIdE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %7, ptr noundef nonnull align 8 dereferenceable(1784) %i.o, ptr noundef nonnull align 8 %8, i32 noundef %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !93
  %i.s = load ptr, ptr %2, align 8, !tbaa !98
  store ptr %i.s, ptr %10, align 8, !tbaa !98
  %i.t = load i32, ptr %i.h, align 8, !tbaa !65
  call void @_ZNK4cvc58internal6theory2eq14EqualityEngine28getTriggerTermRepresentativeENS0_12NodeTemplateILb0EEENS1_8TheoryIdE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %9, ptr noundef nonnull align 8 dereferenceable(1784) %i.r, ptr noundef nonnull align 8 %10, i32 noundef %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.v = load ptr, ptr %7, align 8, !tbaa !98
  store ptr %i.v, ptr %11, align 8, !tbaa !98
  %i.w = load ptr, ptr %9, align 8, !tbaa !98
  store ptr %i.w, ptr %12, align 8, !tbaa !98
  %i.x = call noundef i32 @_ZN4cvc58internal6theory9Valuation17getEqualityStatusENS0_12NodeTemplateILb0EEES4_(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 8 %11, ptr noundef nonnull align 8 %12) ; 2 uses
end_hunk_1
