inline.NumInlined: 6408
inline.NumDeleted: 1102
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN6casadi6MatrixIxE12print_vectorERSoRKNS_8SparsityEPKxb:bb.a

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZNK6casadi6MatrixIxE11print_denseERSob(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.f = icmp eq ptr %i.c, %i.e
  %spec.select.i = select i1 %i.f, ptr null, ptr %i.c
  tail call void @_ZN6casadi6MatrixIxE11print_denseERSoRKNS_8SparsityEPKxb(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %spec.select.i, i1 noundef zeroext %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN6casadi6MatrixIxE11print_denseERSoRKNS_8SparsityEPKxb(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 12 uses
  %4 = alloca %"class.std::vector.5", align 8     ; 13 uses
  %5 = alloca %"class.std::vector.5", align 8     ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.b = invoke noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6casadi6MatrixIxE11print_splitExPKxRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EESD_(i64 noundef %i.b, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106.preheader unwind label %bb.d

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106.preheader: ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106.preheader, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %.088 = phi i64 [ %i.t, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106.preheader ] ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !63   ; 3 uses
  %i.e = load ptr, ptr %5, align 8, !tbaa !61     ; 4 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 5
  %i.j = icmp ult i64 %.088, %i.i
  br i1 %i.j, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106
  %.not.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.p, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.e, %bb.c ] ; 3 uses
  %i.k = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !29 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !34
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #27
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !64

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  store ptr %i.e, ptr %i.c, align 8, !tbaa !63
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit: ; preds = %bb.c, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.q = invoke noundef i64 @_ZNK6casadi8Sparsity5size1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.g unwind label %bb.n       ; 7 uses

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.262, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.e
  %i.t = add nuw nsw i64 %.088, 1                 ; 2 uses
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIxEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.t)
          to label %_ZNSolsEx.exit unwind label %bb.f ; 2 uses

_ZNSolsEx.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull @.str.263, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit105 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit105: ; preds = %_ZNSolsEx.exit
  %i.w = load ptr, ptr %5, align 8, !tbaa !61
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %.088 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !29
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !48
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef %i.y, i64 noundef %i.aa)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.f

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit105
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull @.str.264, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106 unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit105, %_ZNSolsEx.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  %i.ae = invoke noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.h unwind label %bb.o       ; 9 uses

bb.h:                                             ; preds = %bb.g
  %i.af = invoke noundef ptr @_ZNK6casadi8Sparsity6colindEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.i unwind label %bb.p       ; 4 uses

bb.i:                                             ; preds = %bb.h
  %i.ag = invoke noundef ptr @_ZNK6casadi8Sparsity3rowEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.j unwind label %bb.q       ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.ah = mul nsw i64 %i.ae, %i.q
  %i.ai = icmp sgt i64 %i.ah, 1000
  %.0.shrunk = select i1 %3, i1 %i.ai, i1 false   ; 2 uses
  %i.aj = icmp samesign ugt i64 %i.q, 6
  %i.ak = and i1 %i.aj, %.0.shrunk
  %i.al = icmp sgt i64 %i.ae, 6
  %i.am = and i1 %i.al, %.0.shrunk
  %.idx = shl nsw i64 %i.ae, 3
  %i.an = add nsw i64 %.idx, 8                    ; 5 uses
  %i.ao = icmp ugt i64 %i.an, 9223372036854775800
  br i1 %i.ao, label %bb.k, label %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.470) #24
          to label %.noexc.i unwind label %_ZNSt12_Vector_baseIxSaIxEED2Ev.exit.i

.noexc.i:                                         ; preds = %bb.k
  unreachable

_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.j
  %.not.i.i.i = icmp eq i64 %i.ae, -1
  br i1 %.not.i.i.i, label %.thread.i.i, label %_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i.i

.thread.i.i:                                      ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr null, i64 %i.an
  br label %_ZNSt6vectorIxSaIxEEC2IPKxvEET_S5_RKS0_.exit

_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.aq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #25
          to label %.noexc4.i unwind label %_ZNSt12_Vector_baseIxSaIxEED2Ev.exit.i ; 5 uses

.noexc4.i:                                        ; preds = %_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.an ; 2 uses
  %i.as = icmp sgt i64 %i.ae, 0
  br i1 %i.as, label %bb.l, label %bb.m, !prof !178

bb.l:                                             ; preds = %.noexc4.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aq, ptr align 8 %i.af, i64 %i.an, i1 false)
  br label %_ZNSt6vectorIxSaIxEEC2IPKxvEET_S5_RKS0_.exit

bb.m:                                             ; preds = %.noexc4.i
  %i.at = load i64, ptr %i.af, align 8, !tbaa !8
  store i64 %i.at, ptr %i.aq, align 8, !tbaa !8
  br label %_ZNSt6vectorIxSaIxEEC2IPKxvEET_S5_RKS0_.exit

_ZNSt12_Vector_baseIxSaIxEED2Ev.exit.i:           ; preds = %bb.k, %_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.o:                                             ; preds = %bb.g
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %bb.h
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.q:                                             ; preds = %bb.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorIxSaIxEEC2IPKxvEET_S5_RKS0_.exit:     ; preds = %bb.m, %bb.l, %.thread.i.i
  %.sroa.12.0 = phi ptr [ %i.ap, %.thread.i.i ], [ %i.ar, %bb.l ], [ %i.ar, %bb.m ] ; 2 uses
  %.sroa.0183.0 = phi ptr [ null, %.thread.i.i ], [ %i.aq, %bb.l ], [ %i.aq, %bb.m ] ; 9 uses
  %i.az = icmp slt i64 %i.q, 2
  %i.ba = icmp sgt i64 %i.q, 0
  br i1 %i.ba, label %.lr.ph214, label %._crit_edge215

.lr.ph214:                                        ; preds = %_ZNSt6vectorIxSaIxEEC2IPKxvEET_S5_RKS0_.exit
  %not. = xor i1 %i.ak, true
  %i.bb = add nsw i64 %i.q, -3
  %i.bc = icmp sgt i64 %i.ae, 0
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 16 uses
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %not.91 = xor i1 %i.am, true
  %i.bg = add nsw i64 %i.ae, -3
  %i.bh = add nsw i64 %i.q, -1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 18
  %exitcond.peel.not = icmp eq i64 %i.ae, 1
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 18
  br label %bb.r

._crit_edge215:                                   ; preds = %_ZNSolsEPFRSoS_E.exit128, %_ZNSt6vectorIxSaIxEEC2IPKxvEET_S5_RKS0_.exit
  %i.bl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.aw ; 0 uses

bb.r:                                             ; preds = %.lr.ph214, %_ZNSolsEPFRSoS_E.exit128
  %.078213 = phi i64 [ 0, %.lr.ph214 ], [ %i.gk, %_ZNSolsEPFRSoS_E.exit128 ] ; 8 uses
  %i.bm = icmp samesign ult i64 %.078213, 3
  %or.cond = select i1 %not., i1 true, i1 %i.bm
  %i.bn = icmp sge i64 %.078213, %i.bb
  %i.bo = select i1 %or.cond, i1 true, i1 %i.bn   ; 4 uses
  %i.bp = icmp eq i64 %.078213, 0
  br i1 %i.bp, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  br i1 %i.az, label %_ZNSolsEPFRSoS_E.exit107.invoke, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bq = load ptr, ptr %0, align 8, !tbaa !59
  %i.br = getelementptr i8, ptr %i.bq, i64 -24
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = getelementptr inbounds i8, ptr %0, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 240
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !1491 ; 6 uses
  %.not.i.i.i154 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i154, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

.invoke:                                          ; preds = %bb.t, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit130, %bb.an
  invoke void @_ZSt16__throw_bad_castv() #24
          to label %.cont unwind label %.loopexit.split-lp198

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.t
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 56
  %i.bx = load i8, ptr %i.bw, align 8, !tbaa !1498
  %.not.i1.i.i = icmp eq i8 %i.bx, 0
  br i1 %.not.i1.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 67
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !34
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.v:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bv)
          to label %.noexc156 unwind label %.loopexit197

.noexc156:                                        ; preds = %bb.v
  %i.ca = load ptr, ptr %i.bv, align 8, !tbaa !59
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = invoke noundef signext i8 %i.cc(ptr noundef nonnull align 8 dereferenceable(570) %i.bv, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit197, !inline_history !1504

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc156, %bb.u
  %.0.i.i.i = phi i8 [ %i.bz, %bb.u ], [ %i.cd, %.noexc156 ]
  %i.ce = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %.0.i.i.i)
          to label %.noexc158 unwind label %.loopexit197

.noexc158:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.cf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ce)
          to label %_ZNSolsEPFRSoS_E.exit107.invoke unwind label %.loopexit197 ; 0 uses

.loopexit197:                                     ; preds = %.noexc166.invoke, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i163.invoke, %.noexc168.invoke, %_ZNSolsEPFRSoS_E.exit107.invoke, %bb.am, %bb.aq, %bb.as, %bb.v, %.noexc156, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc158, %bb.ao, %bb.ar
  %lpad.loopexit199 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.loopexit.split-lp198:                            ; preds = %.invoke
  %lpad.loopexit.split-lp200 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

_ZNSolsEPFRSoS_E.exit107.invoke:                  ; preds = %bb.w, %bb.s, %.noexc158
  %i.cg = phi ptr [ @.str.277, %bb.s ], [ @.str.277, %.noexc158 ], [ @.str.278, %bb.w ]
  %i.ch = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.cg, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit108 unwind label %.loopexit197 ; 0 uses

bb.w:                                             ; preds = %bb.r
  br i1 %i.bo, label %_ZNSolsEPFRSoS_E.exit107.invoke, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit108

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit108: ; preds = %_ZNSolsEPFRSoS_E.exit107.invoke, %bb.w
  br i1 %i.bc, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit108
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.ci = load i64, ptr %.sroa.0183.0, align 8, !tbaa !8 ; 6 uses
  %i.cj = load i64, ptr %i.bi, align 8, !tbaa !8
  %i.ck = icmp slt i64 %i.ci, %i.cj
  br i1 %i.ck, label %bb.x, label %._crit_edge.i.i113.peel

bb.x:                                             ; preds = %.lr.ph.preheader
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ci
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !8
  %i.cn = icmp eq i64 %i.cm, %.078213
  br i1 %i.cn, label %bb.y, label %._crit_edge.i.i113.peel

._crit_edge.i.i113.peel:                          ; preds = %bb.x, %.lr.ph.preheader
  store ptr %i.bd, ptr %6, align 8, !tbaa !49
  store i16 12336, ptr %i.bd, align 8
  store i64 2, ptr %i.be, align 8, !tbaa !48
  store i8 0, ptr %i.bj, align 2, !tbaa !34
  br label %.critedge.peel

bb.y:                                             ; preds = %bb.x
  %i.co = add nsw i64 %i.ci, 1
  store i64 %i.co, ptr %.sroa.0183.0, align 8, !tbaa !8
  %i.cp = load ptr, ptr %i.bf, align 8, !tbaa !63
  %i.cq = load ptr, ptr %4, align 8, !tbaa !61    ; 2 uses
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = ashr exact i64 %i.ct, 5                 ; 2 uses
  %.not.i.i110.peel = icmp ult i64 %i.ci, %i.cu
  br i1 %.not.i.i110.peel, label %bb.z, label %.loopexit226

bb.z:                                             ; preds = %bb.y
  %i.cv = getelementptr inbounds nuw [32 x i8], ptr %i.cq, i64 %i.ci ; 2 uses
  store ptr %i.bd, ptr %6, align 8, !tbaa !49
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !29 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.cy, ptr %i.a, align 8, !tbaa !50
  %i.cz = icmp ugt i64 %i.cy, 15
  br i1 %i.cz, label %.noexc.i111.peel, label %._crit_edge.i.i.peel

.noexc.i111.peel:                                 ; preds = %bb.z
  %i.da = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc112.peel unwind label %.loopexit.loopexit.split-lp ; 2 uses

.noexc112.peel:                                   ; preds = %.noexc.i111.peel
  store ptr %i.da, ptr %6, align 8, !tbaa !29
  %i.db = load i64, ptr %i.a, align 8, !tbaa !50
  store i64 %i.db, ptr %i.bd, align 8, !tbaa !34
  br label %._crit_edge.i.i.peel

._crit_edge.i.i.peel:                             ; preds = %.noexc112.peel, %bb.z
  %i.dc = phi ptr [ %i.da, %.noexc112.peel ], [ %i.bd, %bb.z ] ; 2 uses
  switch i64 %i.cy, label %bb.ab [
    i64 1, label %bb.aa
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.peel
  ]

bb.aa:                                            ; preds = %._crit_edge.i.i.peel
  %i.dd = load i8, ptr %i.cw, align 1, !tbaa !34
  store i8 %i.dd, ptr %i.dc, align 1, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.peel

bb.ab:                                            ; preds = %._crit_edge.i.i.peel
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dc, ptr align 1 %i.cw, i64 %i.cy, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.peel: ; preds = %bb.ab, %bb.aa, %._crit_edge.i.i.peel
  %i.de = load i64, ptr %i.a, align 8, !tbaa !50  ; 2 uses
  store i64 %i.de, ptr %i.be, align 8, !tbaa !48
  %i.df = load ptr, ptr %6, align 8, !tbaa !29
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.de
  store i8 0, ptr %i.dg, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %.critedge.peel

.critedge.peel:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.peel, %._crit_edge.i.i113.peel
  br i1 %i.bo, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117.peel, label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit119.peel

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117.peel: ; preds = %.critedge.peel
  %.pre239 = load i64, ptr %i.be, align 8, !tbaa !48
  %.pre = load ptr, ptr %6, align 8, !tbaa !29
  %i.dh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.pre, i64 noundef %.pre239)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit119.peel unwind label %.loopexit.split-lp230 ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit119.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117.peel, %.critedge.peel
  %i.di = load ptr, ptr %6, align 8, !tbaa !29    ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.bd
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit119.peel
  %i.dk = load i64, ptr %i.bd, align 8, !tbaa !34
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit119.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br i1 %exitcond.peel.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124.peel, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit108
  %i.dm = icmp slt i64 %.078213, %i.bh
  br i1 %i.dm, label %bb.al, label %bb.as

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124
  %.076212 = phi i64 [ %i.dp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124.peel ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0183.0, i64 %.076212 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !8  ; 6 uses
  %i.dp = add nuw nsw i64 %.076212, 1             ; 3 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.dp
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !8
  %i.ds = icmp slt i64 %i.do, %i.dr
  br i1 %i.ds, label %bb.ac, label %._crit_edge.i.i113

bb.ac:                                            ; preds = %.lr.ph
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.do
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !8
  %i.dv = icmp eq i64 %i.du, %.078213
  br i1 %i.dv, label %bb.ad, label %._crit_edge.i.i113

bb.ad:                                            ; preds = %bb.ac
  %i.dw = add nsw i64 %i.do, 1
  store i64 %i.dw, ptr %i.dn, align 8, !tbaa !8
  %i.dx = load ptr, ptr %i.bf, align 8, !tbaa !63
  %i.dy = load ptr, ptr %4, align 8, !tbaa !61    ; 2 uses
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = ashr exact i64 %i.eb, 5                 ; 2 uses
  %.not.i.i110 = icmp ult i64 %i.do, %i.ec
  br i1 %.not.i.i110, label %bb.ae, label %.loopexit226

.loopexit226:                                     ; preds = %bb.y, %bb.ad
  %.lcssa217 = phi i64 [ %i.do, %bb.ad ], [ %i.ci, %bb.y ]
  %.lcssa = phi i64 [ %i.ec, %bb.ad ], [ %i.cu, %bb.y ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.472, i64 noundef %.lcssa217, i64 noundef %.lcssa) #24
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.loopexit226
  unreachable

bb.ae:                                            ; preds = %bb.ad
  %i.ed = getelementptr inbounds nuw [32 x i8], ptr %i.dy, i64 %i.do ; 2 uses
  store ptr %i.bd, ptr %6, align 8, !tbaa !49
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !29 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.eg, ptr %i.a, align 8, !tbaa !50
  %i.eh = icmp ugt i64 %i.eg, 15
  br i1 %i.eh, label %.noexc.i111, label %._crit_edge.i.i

.noexc.i111:                                      ; preds = %bb.ae
  %i.ei = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc112 unwind label %.loopexit.loopexit ; 2 uses

.noexc112:                                        ; preds = %.noexc.i111
  store ptr %i.ei, ptr %6, align 8, !tbaa !29
  %i.ej = load i64, ptr %i.a, align 8, !tbaa !50
  store i64 %i.ej, ptr %i.bd, align 8, !tbaa !34
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc112, %bb.ae
  %i.ek = phi ptr [ %i.ei, %.noexc112 ], [ %i.bd, %bb.ae ] ; 2 uses
  switch i64 %i.eg, label %bb.ag [
    i64 1, label %bb.af
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.af:                                            ; preds = %._crit_edge.i.i
  %i.el = load i8, ptr %i.ee, align 1, !tbaa !34
  store i8 %i.el, ptr %i.ek, align 1, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.ag:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ek, ptr align 1 %i.ee, i64 %i.eg, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.af, %bb.ag
  %i.em = load i64, ptr %i.a, align 8, !tbaa !50  ; 2 uses
  store i64 %i.em, ptr %i.be, align 8, !tbaa !48
  %i.en = load ptr, ptr %6, align 8, !tbaa !29
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.em
  store i8 0, ptr %i.eo, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %.critedge

._crit_edge.i.i113:                               ; preds = %bb.ac, %.lr.ph
  store ptr %i.bd, ptr %6, align 8, !tbaa !49
  store i16 12336, ptr %i.bd, align 8
  store i64 2, ptr %i.be, align 8, !tbaa !48
  store i8 0, ptr %i.bk, align 2, !tbaa !34
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %._crit_edge.i.i113
  br i1 %i.bo, label %bb.ah, label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit119

.loopexit.loopexit:                               ; preds = %.noexc.i111
  %lpad.loopexit227 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.loopexit.loopexit.split-lp:                      ; preds = %.noexc.i111.peel
  %lpad.loopexit.split-lp228 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.loopexit.split-lp:                               ; preds = %.loopexit226
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ah:                                            ; preds = %.critedge
  %i.ep = icmp samesign ult i64 %.076212, 3
  %or.cond3 = select i1 %not.91, i1 true, i1 %i.ep
  %i.eq = icmp sge i64 %.076212, %i.bg
  %i.er = select i1 %or.cond3, i1 true, i1 %i.eq
  br i1 %i.er, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.es = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.264, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117 unwind label %.loopexit229 ; 0 uses

.loopexit229:                                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117.invoke, %bb.ai
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.loopexit.split-lp230:                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117.peel
  %lpad.loopexit.split-lp231 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.aj:                                            ; preds = %.loopexit.split-lp230, %.loopexit229
  %lpad.phi232 = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit229 ], [ %lpad.loopexit.split-lp231, %.loopexit.split-lp230 ] ; 2 uses
  %i.et = load ptr, ptr %6, align 8, !tbaa !29    ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.bd
  br i1 %i.eu, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.aj
  %i.ev = load i64, ptr %i.bd, align 8, !tbaa !34
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ew) #27
  br label %.thread

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117: ; preds = %bb.ai
  %i.ex = load ptr, ptr %6, align 8, !tbaa !29
  %i.ey = load i64, ptr %i.be, align 8, !tbaa !48
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117.invoke

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117.invoke: ; preds = %bb.ak, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117
  %i.ez = phi ptr [ %i.ex, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117 ], [ @.str.266, %bb.ak ]
  %i.fa = phi i64 [ %i.ey, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117 ], [ 5, %bb.ak ]
  %i.fb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.ez, i64 noundef %i.fa)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit119 unwind label %.loopexit229 ; 0 uses

bb.ak:                                            ; preds = %bb.ah
  %i.fc = icmp eq i64 %.076212, 3
  br i1 %i.fc, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117.invoke, label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit119

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit119: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117.invoke, %bb.ak, %.critedge
  %i.fd = load ptr, ptr %6, align 8, !tbaa !29    ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.bd
  br i1 %i.fe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit119
  %i.ff = load i64, ptr %i.bd, align 8, !tbaa !34
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fg) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit119, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %exitcond.not = icmp eq i64 %i.dp, %i.ae
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1505

.thread:                                          ; preds = %bb.aj, %.loopexit.loopexit, %.loopexit.loopexit.split-lp, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.pn = phi { ptr, i32 } [ %lpad.phi232, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %lpad.loopexit.split-lp228, %.loopexit.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit227, %.loopexit.loopexit ], [ %lpad.phi232, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.ay

bb.al:                                            ; preds = %._crit_edge
  br i1 %i.bo, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.fh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.279, i64 noundef 3)
          to label %bb.an unwind label %.loopexit197 ; 0 uses

bb.an:                                            ; preds = %bb.am
  %i.fi = load ptr, ptr %0, align 8, !tbaa !59
  %i.fj = getelementptr i8, ptr %i.fi, i64 -24
  %i.fk = load i64, ptr %i.fj, align 8
  %i.fl = getelementptr inbounds i8, ptr %0, i64 %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 240
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !1491 ; 5 uses
  %.not.i.i.i160 = icmp eq ptr %i.fn, null
  br i1 %.not.i.i.i160, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i161

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i161: ; preds = %bb.an
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 56
  %i.fp = load i8, ptr %i.fo, align 8, !tbaa !1498
  %.not.i1.i.i162 = icmp eq i8 %i.fp, 0
  br i1 %.not.i1.i.i162, label %bb.ao, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i163.invoke.sink.split

bb.ao:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i161
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.fn)
          to label %.noexc166.invoke unwind label %.loopexit197

.noexc166.invoke:                                 ; preds = %bb.ao, %bb.ar
  %.sink = phi ptr [ %i.gg, %bb.ar ], [ %i.fn, %bb.ao ] ; 2 uses
  %i.fq = load ptr, ptr %.sink, align 8, !tbaa !59
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 48
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = invoke noundef signext i8 %i.fs(ptr noundef nonnull align 8 dereferenceable(570) %.sink, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i163.invoke unwind label %.loopexit197, !inline_history !1504

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i163.invoke.sink.split: ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i161, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i172
  %.sink296 = phi ptr [ %i.gg, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i172 ], [ %i.fn, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i161 ]
  %i.fu = getelementptr inbounds nuw i8, ptr %.sink296, i64 67
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !34
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i163.invoke

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i163.invoke: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i163.invoke.sink.split, %.noexc166.invoke
  %i.fw = phi i8 [ %i.ft, %.noexc166.invoke ], [ %i.fv, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i163.invoke.sink.split ]
  %i.fx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.fw)
          to label %.noexc168.invoke unwind label %.loopexit197

.noexc168.invoke:                                 ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i163.invoke
  %i.fy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fx)
          to label %_ZNSolsEPFRSoS_E.exit128 unwind label %.loopexit197 ; 0 uses

bb.ap:                                            ; preds = %bb.al
  %i.fz = icmp eq i64 %.078213, 3
  br i1 %i.fz, label %bb.aq, label %_ZNSolsEPFRSoS_E.exit128

bb.aq:                                            ; preds = %bb.ap
  %i.ga = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.280, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit130 unwind label %.loopexit197 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit130: ; preds = %bb.aq
  %i.gb = load ptr, ptr %0, align 8, !tbaa !59
  %i.gc = getelementptr i8, ptr %i.gb, i64 -24
  %i.gd = load i64, ptr %i.gc, align 8
  %i.ge = getelementptr inbounds i8, ptr %0, i64 %i.gd
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 240
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !1491 ; 5 uses
  %.not.i.i.i171 = icmp eq ptr %i.gg, null
  br i1 %.not.i.i.i171, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i172

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i172: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit130
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 56
  %i.gi = load i8, ptr %i.gh, align 8, !tbaa !1498
  %.not.i1.i.i173 = icmp eq i8 %i.gi, 0
  br i1 %.not.i1.i.i173, label %bb.ar, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i163.invoke.sink.split

bb.ar:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i172
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.gg)
          to label %.noexc166.invoke unwind label %.loopexit197

bb.as:                                            ; preds = %._crit_edge
  %i.gj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.281, i64 noundef 2)
          to label %_ZNSolsEPFRSoS_E.exit128 unwind label %.loopexit197 ; 0 uses

_ZNSolsEPFRSoS_E.exit128:                         ; preds = %.noexc168.invoke, %bb.as, %bb.ap
  %i.gk = add nuw nsw i64 %.078213, 1             ; 2 uses
  %exitcond236.not = icmp eq i64 %i.gk, %i.q
  br i1 %exitcond236.not, label %._crit_edge215, label %bb.r, !llvm.loop !1506

_ZNSolsEPFRSoS_E.exit:                            ; preds = %._crit_edge215
  %.not.i.i.i135 = icmp eq ptr %.sroa.0183.0, null
  br i1 %.not.i.i.i135, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %bb.at

bb.at:                                            ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.gl = ptrtoint ptr %.sroa.12.0 to i64
  %i.gm = ptrtoint ptr %.sroa.0183.0 to i64
  %i.gn = sub i64 %i.gl, %i.gm
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0183.0, i64 noundef %i.gn) #27
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit

_ZNSt6vectorIxSaIxEED2Ev.exit:                    ; preds = %_ZNSolsEPFRSoS_E.exit, %bb.at
  %i.go = load ptr, ptr %5, align 8, !tbaa !61    ; 3 uses
  %i.gp = load ptr, ptr %i.c, align 8, !tbaa !63  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.go, %i.gp
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIxSaIxEED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.gv, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.go, %_ZNSt6vectorIxSaIxEED2Ev.exit ] ; 3 uses
  %i.gq = load ptr, ptr %.05.i.i.i, align 8, !tbaa !29 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.gs = icmp eq ptr %i.gq, %i.gr
  br i1 %i.gs, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.gt = load i64, ptr %i.gr, align 8, !tbaa !34
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gu) #27
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.gv = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i137 = icmp eq ptr %i.gv, %i.gp
  br i1 %.not.i.i.i137, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !64

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !61
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIxSaIxEED2Ev.exit
  %i.gw = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.go, %_ZNSt6vectorIxSaIxEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.gw, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.gx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !65
  %i.gz = ptrtoint ptr %i.gy to i64
  %i.ha = ptrtoint ptr %i.gw to i64
  %i.hb = sub i64 %i.gz, %i.ha
  call void @_ZdlPvm(ptr noundef nonnull %i.gw, i64 noundef %i.hb) #27
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.hc = load ptr, ptr %4, align 8, !tbaa !61    ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !63 ; 2 uses
  %.not4.i.i.i138 = icmp eq ptr %i.hc, %i.he
  br i1 %.not4.i.i.i138, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i146, label %.lr.ph.i.i.i139

.lr.ph.i.i.i139:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i142
  %.05.i.i.i140 = phi ptr [ %i.hk, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i142 ], [ %i.hc, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 3 uses
  %i.hf = load ptr, ptr %.05.i.i.i140, align 8, !tbaa !29 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.05.i.i.i140, i64 16 ; 2 uses
  %i.hh = icmp eq ptr %i.hf, %i.hg
  br i1 %i.hh, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i142, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i141: ; preds = %.lr.ph.i.i.i139
  %i.hi = load i64, ptr %i.hg, align 8, !tbaa !34
  %i.hj = add i64 %i.hi, 1
  call void @_ZdlPvm(ptr noundef %i.hf, i64 noundef %i.hj) #27
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i142

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i142: ; preds = %.lr.ph.i.i.i139, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i141
  %i.hk = getelementptr inbounds nuw i8, ptr %.05.i.i.i140, i64 32 ; 2 uses
  %.not.i.i.i143 = icmp eq ptr %i.hk, %i.he
  br i1 %.not.i.i.i143, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i144, label %.lr.ph.i.i.i139, !llvm.loop !64

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i144: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i142
  %.pr.i145 = load ptr, ptr %4, align 8, !tbaa !61
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i146

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i146: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i144, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.hl = phi ptr [ %.pr.i145, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i144 ], [ %i.hc, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i147 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i1.i147, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit149, label %bb.av

bb.av:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i146
  %i.hm = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !65
  %i.ho = ptrtoint ptr %i.hn to i64
  %i.hp = ptrtoint ptr %i.hl to i64
  %i.hq = sub i64 %i.ho, %i.hp
  call void @_ZdlPvm(ptr noundef nonnull %i.hl, i64 noundef %i.hq) #27
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit149

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit149: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i146, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void

bb.aw:                                            ; preds = %._crit_edge215
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ax:                                            ; preds = %.loopexit197, %.loopexit.split-lp198, %bb.aw
  %.pn.pn.pn = phi { ptr, i32 } [ %i.hr, %bb.aw ], [ %lpad.loopexit199, %.loopexit197 ], [ %lpad.loopexit.split-lp200, %.loopexit.split-lp198 ] ; 2 uses
  %.not.i.i.i150 = icmp eq ptr %.sroa.0183.0, null
  br i1 %.not.i.i.i150, label %.body, label %bb.ay

bb.ay:                                            ; preds = %.thread, %bb.ax
  %.pn.pn.pn193 = phi { ptr, i32 } [ %.pn, %.thread ], [ %.pn.pn.pn, %bb.ax ]
  %i.hs = ptrtoint ptr %.sroa.12.0 to i64
  %i.ht = ptrtoint ptr %.sroa.0183.0 to i64
  %i.hu = sub i64 %i.hs, %i.ht
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0183.0, i64 noundef %i.hu) #27
  br label %.body

.body:                                            ; preds = %_ZNSt12_Vector_baseIxSaIxEED2Ev.exit.i, %bb.ax, %bb.ay, %bb.n, %bb.p, %bb.q, %bb.o, %bb.f, %bb.d
  %.pn100 = phi { ptr, i32 } [ %i.ad, %bb.f ], [ %i.r, %bb.d ], [ %i.av, %bb.n ], [ %i.aw, %bb.o ], [ %i.ax, %bb.p ], [ %i.ay, %bb.q ], [ %i.au, %_ZNSt12_Vector_baseIxSaIxEED2Ev.exit.i ], [ %.pn.pn.pn193, %bb.ay ], [ %.pn.pn.pn, %bb.ax ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  resume { ptr, i32 } %.pn100
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZNK6casadi6MatrixIxE12print_sparseERSob(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.f = icmp eq ptr %i.c, %i.e
  %spec.select.i = select i1 %i.f, ptr null, ptr %i.c
  tail call void @_ZN6casadi6MatrixIxE12print_sparseERSoRKNS_8SparsityEPKxb(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %spec.select.i, i1 noundef zeroext %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN6casadi6MatrixIxE12print_sparseERSoRKNS_8SparsityEPKxb(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.5", align 8     ; 12 uses
  %5 = alloca %"class.std::vector.5", align 8     ; 12 uses
  %i.a = tail call noundef i64 @_ZNK6casadi8Sparsity5size1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %i.b = tail call noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 4 uses
  %i.c = tail call noundef ptr @_ZNK6casadi8Sparsity6colindEv(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %i.d = tail call noundef ptr @_ZNK6casadi8Sparsity3rowEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.e = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 5 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.270, i64 noundef 17) ; 0 uses
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIxEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.a) ; 2 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.50, i64 noundef 4) ; 0 uses
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIxEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef %i.b)
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j) ; 0 uses
  br label %bb.y

bb.c:                                             ; preds = %bb.a
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.271, i64 noundef 8) ; 0 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIxEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.a) ; 2 uses
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.50, i64 noundef 4) ; 0 uses
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIxEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.m, i64 noundef %i.b) ; 2 uses
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.264, i64 noundef 2) ; 0 uses
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIxEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.o, i64 noundef %i.e)
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str.272, i64 noundef 4) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  invoke void @_ZN6casadi6MatrixIxE11print_splitExPKxRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EESD_(i64 noundef %i.e, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58.preheader unwind label %bb.e

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58.preheader: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58.preheader, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %.048 = phi i64 [ %i.bc, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58.preheader ] ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !63   ; 3 uses
  %i.u = load ptr, ptr %5, align 8, !tbaa !61     ; 4 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 5
  %i.z = icmp ult i64 %.048, %i.y
  br i1 %i.z, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58
  %.not.i.i = icmp eq ptr %i.t, %i.u
  br i1 %.not.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i
end_hunk_0
