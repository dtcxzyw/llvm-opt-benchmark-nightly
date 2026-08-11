inline.NumInlined: 6408
inline.NumDeleted: 1102
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN6casadi6MatrixIxE12print_vectorERSoRKNS_8SparsityEPKxb:bb.a
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !65
  %i.fo = ptrtoint ptr %i.fn to i64
  %i.fp = ptrtoint ptr %i.fl to i64
  %i.fq = sub i64 %i.fo, %i.fp
  call void @_ZdlPvm(ptr noundef nonnull %i.fl, i64 noundef %i.fq) #27
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  %i.fr = load ptr, ptr %14, align 8, !tbaa !61   ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !63 ; 2 uses
  %.not4.i.i.i128 = icmp eq ptr %i.fr, %i.ft
  br i1 %.not4.i.i.i128, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i136, label %.lr.ph.i.i.i129

.lr.ph.i.i.i129:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i132
  %.05.i.i.i130 = phi ptr [ %i.fz, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i132 ], [ %i.fr, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 3 uses
  %i.fu = load ptr, ptr %.05.i.i.i130, align 8, !tbaa !29 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.05.i.i.i130, i64 16 ; 2 uses
  %i.fw = icmp eq ptr %i.fu, %i.fv
  br i1 %i.fw, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i131: ; preds = %.lr.ph.i.i.i129
  %i.fx = load i64, ptr %i.fv, align 8, !tbaa !34
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fy) #27
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i132

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i132: ; preds = %.lr.ph.i.i.i129, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i131
  %i.fz = getelementptr inbounds nuw i8, ptr %.05.i.i.i130, i64 32 ; 2 uses
  %.not.i.i.i133 = icmp eq ptr %i.fz, %i.ft
  br i1 %.not.i.i.i133, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i134, label %.lr.ph.i.i.i129, !llvm.loop !64

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i134: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i132
  %.pr.i135 = load ptr, ptr %14, align 8, !tbaa !61
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i136

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i136: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i134, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.ga = phi ptr [ %.pr.i135, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i134 ], [ %i.fr, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i137 = icmp eq ptr %i.ga, null
  br i1 %.not.i.i1.i137, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit139, label %bb.av

bb.av:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i136
  %i.gb = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !65
  %i.gd = ptrtoint ptr %i.gc to i64
  %i.ge = ptrtoint ptr %i.ga to i64
  %i.gf = sub i64 %i.gd, %i.ge
  call void @_ZdlPvm(ptr noundef nonnull %i.ga, i64 noundef %i.gf) #27
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit139

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit139: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i136, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  ret void

bb.aw:                                            ; preds = %bb.ag, %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, %bb.aj, %bb.ah, %bb.w, %bb.u
  %.pn84 = phi { ptr, i32 } [ %i.cb, %bb.w ], [ %i.bp, %bb.u ], [ %i.di, %bb.ag ], [ %i.dj, %bb.ah ], [ %i.dk, %bb.ai ], [ %.pn78, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119 ], [ %i.dm, %bb.aj ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %15) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %bb.ax

bb.ax:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, %bb.q, %bb.aw
  %.pn84.pn = phi { ptr, i32 } [ %.pn84, %bb.aw ], [ %.pn.pn.pn.pn.pn.pn.pn143, %bb.q ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105 ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103 ]
  resume { ptr, i32 } %.pn84.pn

bb.ay:                                            ; preds = %bb.j
  unreachable
}

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
  %7 = icmp samesign ugt i64 %i.q, 6
  %i.aj = and i1 %7, %.0.shrunk
  %i.ak = icmp sgt i64 %i.ae, 6
  %i.al = and i1 %i.ak, %.0.shrunk
  %.idx = shl nsw i64 %i.ae, 3
  %i.am = add nsw i64 %.idx, 8                    ; 5 uses
  %i.an = icmp ugt i64 %i.am, 9223372036854775800
  br i1 %i.an, label %bb.k, label %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.470) #24
          to label %.noexc.i unwind label %_ZNSt12_Vector_baseIxSaIxEED2Ev.exit.i

.noexc.i:                                         ; preds = %bb.k
  unreachable

_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.j
  %.not.i.i.i = icmp eq i64 %i.ae, -1
  br i1 %.not.i.i.i, label %.thread.i.i, label %_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i.i

.thread.i.i:                                      ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr null, i64 %i.am
  br label %_ZNSt6vectorIxSaIxEEC2IPKxvEET_S5_RKS0_.exit

_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.ap = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #25
          to label %.noexc4.i unwind label %_ZNSt12_Vector_baseIxSaIxEED2Ev.exit.i ; 5 uses

.noexc4.i:                                        ; preds = %_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.am ; 2 uses
  %i.ar = icmp sgt i64 %i.ae, 0
  br i1 %i.ar, label %bb.l, label %bb.m, !prof !178

bb.l:                                             ; preds = %.noexc4.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ap, ptr align 8 %i.af, i64 %i.am, i1 false)
  br label %_ZNSt6vectorIxSaIxEEC2IPKxvEET_S5_RKS0_.exit

bb.m:                                             ; preds = %.noexc4.i
  %i.as = load i64, ptr %i.af, align 8, !tbaa !8
  store i64 %i.as, ptr %i.ap, align 8, !tbaa !8
  br label %_ZNSt6vectorIxSaIxEEC2IPKxvEET_S5_RKS0_.exit

_ZNSt12_Vector_baseIxSaIxEED2Ev.exit.i:           ; preds = %bb.k, %_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.o:                                             ; preds = %bb.g
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %bb.h
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.q:                                             ; preds = %bb.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorIxSaIxEEC2IPKxvEET_S5_RKS0_.exit:     ; preds = %bb.m, %bb.l, %.thread.i.i
  %.sroa.12.0 = phi ptr [ %i.ao, %.thread.i.i ], [ %i.aq, %bb.l ], [ %i.aq, %bb.m ] ; 2 uses
  %.sroa.0183.0 = phi ptr [ null, %.thread.i.i ], [ %i.ap, %bb.l ], [ %i.ap, %bb.m ] ; 9 uses
  %i.ay = icmp slt i64 %i.q, 2                    ; 2 uses
  %i.az = icmp sgt i64 %i.q, 0
  br i1 %i.az, label %.lr.ph214, label %._crit_edge215

.lr.ph214:                                        ; preds = %_ZNSt6vectorIxSaIxEEC2IPKxvEET_S5_RKS0_.exit
  %not. = xor i1 %i.aj, true
  %i.ba = add nsw i64 %i.q, -3
  %i.bb = icmp sgt i64 %i.ae, 0
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 16 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %not.91 = xor i1 %i.al, true
  %i.bf = add nsw i64 %i.ae, -3
  %i.bg = add nsw i64 %i.q, -1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 18
  %exitcond.peel.not = icmp eq i64 %i.ae, 1
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 18
  br label %bb.r

._crit_edge215:                                   ; preds = %_ZNSolsEPFRSoS_E.exit128, %_ZNSt6vectorIxSaIxEEC2IPKxvEET_S5_RKS0_.exit
  %i.bk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.aw ; 0 uses

bb.r:                                             ; preds = %.lr.ph214, %_ZNSolsEPFRSoS_E.exit128
  %.078213 = phi i64 [ 0, %.lr.ph214 ], [ %i.gj, %_ZNSolsEPFRSoS_E.exit128 ] ; 8 uses
  %i.bl = icmp samesign ult i64 %.078213, 3
  %or.cond = select i1 %not., i1 true, i1 %i.bl
  %i.bm = icmp sge i64 %.078213, %i.ba
  %i.bn = select i1 %or.cond, i1 true, i1 %i.bm   ; 4 uses
  %i.bo = icmp eq i64 %.078213, 0
  br i1 %i.bo, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  br i1 %i.ay, label %_ZNSolsEPFRSoS_E.exit107.invoke, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bp = load ptr, ptr %0, align 8, !tbaa !59
  %i.bq = getelementptr i8, ptr %i.bp, i64 -24
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds i8, ptr %0, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 240
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !1491 ; 6 uses
  %.not.i.i.i154 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i154, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

.invoke:                                          ; preds = %bb.t, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit130, %bb.an
  invoke void @_ZSt16__throw_bad_castv() #24
          to label %.cont unwind label %.loopexit.split-lp198

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.t
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 56
  %i.bw = load i8, ptr %i.bv, align 8, !tbaa !1498
  %.not.i1.i.i = icmp eq i8 %i.bw, 0
  br i1 %.not.i1.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 67
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !34
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.v:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bu)
          to label %.noexc156 unwind label %.loopexit197

.noexc156:                                        ; preds = %bb.v
  %i.bz = load ptr, ptr %i.bu, align 8, !tbaa !59
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = invoke noundef signext i8 %i.cb(ptr noundef nonnull align 8 dereferenceable(570) %i.bu, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit197, !inline_history !1504

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc156, %bb.u
  %.0.i.i.i = phi i8 [ %i.by, %bb.u ], [ %i.cc, %.noexc156 ]
  %i.cd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %.0.i.i.i)
          to label %.noexc158 unwind label %.loopexit197

.noexc158:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.ce = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cd)
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
  %i.cf = phi ptr [ @.str.277, %bb.s ], [ @.str.277, %.noexc158 ], [ @.str.278, %bb.w ]
  %i.cg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.cf, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit108 unwind label %.loopexit197 ; 0 uses

bb.w:                                             ; preds = %bb.r
  br i1 %i.bn, label %_ZNSolsEPFRSoS_E.exit107.invoke, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit108

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit108: ; preds = %_ZNSolsEPFRSoS_E.exit107.invoke, %bb.w
  br i1 %i.bb, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit108
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.ch = load i64, ptr %.sroa.0183.0, align 8, !tbaa !8 ; 6 uses
  %i.ci = load i64, ptr %i.bh, align 8, !tbaa !8
  %i.cj = icmp slt i64 %i.ch, %i.ci
  br i1 %i.cj, label %bb.x, label %._crit_edge.i.i113.peel

bb.x:                                             ; preds = %.lr.ph.preheader
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ch
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !8
  %i.cm = icmp eq i64 %i.cl, %.078213
  br i1 %i.cm, label %bb.y, label %._crit_edge.i.i113.peel

._crit_edge.i.i113.peel:                          ; preds = %bb.x, %.lr.ph.preheader
  store ptr %i.bc, ptr %6, align 8, !tbaa !49
  store i16 12336, ptr %i.bc, align 8
  store i64 2, ptr %i.bd, align 8, !tbaa !48
  store i8 0, ptr %i.bi, align 2, !tbaa !34
  br label %.critedge.peel

bb.y:                                             ; preds = %bb.x
  %i.cn = add nsw i64 %i.ch, 1
  store i64 %i.cn, ptr %.sroa.0183.0, align 8, !tbaa !8
  %i.co = load ptr, ptr %i.be, align 8, !tbaa !63
  %i.cp = load ptr, ptr %4, align 8, !tbaa !61    ; 2 uses
  %i.cq = ptrtoint ptr %i.co to i64
end_hunk_0
begin_hunk_1_@_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_6MatrixIxEEEExRKT_SH_SH_RKS5_IxSaIxEESL_SL_SL_SL_SL_RSJ_SM_SM_SM_EUlRKS3_SO_E_EEEvSF_SF_T0_:bb.a
  %.sroa.05.08.i.i31 = phi ptr [ %.sroa.0.0.i.i32, %.lr.ph.i.i30 ], [ %.sroa.08.020.i23, %bb.h ] ; 4 uses
  %.sroa.0.0.i.i32 = getelementptr inbounds i8, ptr %.sroa.05.08.i.i31, i64 -16 ; 3 uses
  %i.dn = load i64, ptr %.sroa.0.0.i.i32, align 8, !tbaa !8
  store i64 %i.dn, ptr %.sroa.05.08.i.i31, align 8, !tbaa !133
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i31, i64 8
  store i64 %i.dm, ptr %i.do, align 8, !tbaa !135
  %i.dp = getelementptr inbounds i8, ptr %.sroa.05.08.i.i31, i64 -24
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !135 ; 2 uses
  %i.dr = icmp slt i64 %i.bt, %i.dq
  br i1 %i.dr, label %.lr.ph.i.i30, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN6casadi16einstein_processINSB_6MatrixIxEEEExRKT_SH_SH_RKS5_IxSaIxEESL_SL_SL_SL_SL_RSJ_SM_SM_SM_EUlRKS3_SO_E_EEEvSF_T0_.exit.i26, !llvm.loop !1909

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN6casadi16einstein_processINSB_6MatrixIxEEEExRKT_SH_SH_RKS5_IxSaIxEESL_SL_SL_SL_SL_RSJ_SM_SM_SM_EUlRKS3_SO_E_EEEvSF_T0_.exit.i26: ; preds = %.lr.ph.i.i30, %bb.h
  %.sroa.05.0.lcssa.i.i27 = phi ptr [ %.sroa.08.020.i23, %bb.h ], [ %.sroa.0.0.i.i32, %.lr.ph.i.i30 ] ; 2 uses
  store i64 %.sroa.0.0.copyload.i25, ptr %.sroa.05.0.lcssa.i.i27, align 8, !tbaa !133
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i.i27, i64 8
  store i64 %i.bt, ptr %i.ds, align 8, !tbaa !135
  br label %bb.i

bb.i:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN6casadi16einstein_processINSB_6MatrixIxEEEExRKT_SH_SH_RKS5_IxSaIxEESL_SL_SL_SL_SL_RSJ_SM_SM_SM_EUlRKS3_SO_E_EEEvSF_T0_.exit.i26, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i33
  %.sroa.08.0.i28 = getelementptr inbounds nuw i8, ptr %.sroa.08.020.i23, i64 16 ; 2 uses
  %.not.i29 = icmp eq ptr %.sroa.08.0.i28, %1
  br i1 %.not.i29, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_6MatrixIxEEEExRKT_SH_SH_RKS5_IxSaIxEESL_SL_SL_SL_SL_RSJ_SM_SM_SM_EUlRKS3_SO_E_EEEvSF_SF_T0_.exit, label %bb.f, !llvm.loop !1910

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_6MatrixIxEEEExRKT_SH_SH_RKS5_IxSaIxEESL_SL_SL_SL_SL_RSJ_SM_SM_SM_EUlRKS3_SO_E_EEEvSF_SF_T0_.exit: ; preds = %bb.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN6casadi16einstein_processINSB_6MatrixIxEEEExRKT_SH_SH_RKS5_IxSaIxEESL_SL_SL_SL_SL_RSJ_SM_SM_SM_EUlRKS3_SO_E_EEEvSF_T0_.exit.i13, %.preheader.i19, %bb.e, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_6MatrixIxEEEExRKT_SH_SH_RKS5_IxSaIxEESL_SL_SL_SL_SL_RSJ_SM_SM_SM_EUlRKS3_SO_E_EEEvSF_SF_T0_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden ptr @_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_6MatrixIxEEEExRKT_SH_SH_RKS5_IxSaIxEESL_SL_SL_SL_SL_RSJ_SM_SM_SM_EUlRKS3_SO_E_EEESF_SF_SF_T0_(ptr %0, ptr %1) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 4
  %i.e = sdiv i64 %i.d, 2
  %i.f = getelementptr inbounds [16 x i8], ptr %0, i64 %i.e ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = getelementptr inbounds i8, ptr %1, i64 -16 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !135  ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !135  ; 5 uses
  %i.m = icmp slt i64 %i.j, %i.l
  %i.n = getelementptr inbounds i8, ptr %1, i64 -8 ; 5 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !135  ; 4 uses
  br i1 %i.m, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.p = icmp slt i64 %i.l, %i.o
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = load i64, ptr %i.f, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load <2 x i64>, ptr %0, align 8, !tbaa !8
  store i64 %i.q, ptr %0, align 8, !tbaa !8
  store i64 %i.l, ptr %i.r, align 8, !tbaa !8
  store <2 x i64> %i.s, ptr %i.f, align 8, !tbaa !8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_6MatrixIxEEEExRKT_SH_SH_RKS5_IxSaIxEESL_SL_SL_SL_SL_RSJ_SM_SM_SM_EUlRKS3_SO_E_EEEvSF_SF_SF_SF_T0_.exit

bb.d:                                             ; preds = %bb.b
  %i.t = icmp slt i64 %i.j, %i.o
  %i.u = load i64, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = load i64, ptr %i.h, align 8, !tbaa !8
  store i64 %i.w, ptr %0, align 8, !tbaa !8
  store i64 %i.u, ptr %i.h, align 8, !tbaa !8
  %i.x = load i64, ptr %i.v, align 8, !tbaa !8
  %i.y = load i64, ptr %i.n, align 8, !tbaa !8
  store i64 %i.y, ptr %i.v, align 8, !tbaa !8
  store i64 %i.x, ptr %i.n, align 8, !tbaa !8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_6MatrixIxEEEExRKT_SH_SH_RKS5_IxSaIxEESL_SL_SL_SL_SL_RSJ_SM_SM_SM_EUlRKS3_SO_E_EEEvSF_SF_SF_SF_T0_.exit

bb.f:                                             ; preds = %bb.d
  %i.z = load i64, ptr %i.g, align 8, !tbaa !8
  store i64 %i.z, ptr %0, align 8, !tbaa !8
  store i64 %i.u, ptr %i.g, align 8, !tbaa !8
  %i.aa = load i64, ptr %i.v, align 8, !tbaa !8
  store i64 %i.j, ptr %i.v, align 8, !tbaa !8
  store i64 %i.aa, ptr %i.i, align 8, !tbaa !8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_6MatrixIxEEEExRKT_SH_SH_RKS5_IxSaIxEESL_SL_SL_SL_SL_RSJ_SM_SM_SM_EUlRKS3_SO_E_EEEvSF_SF_SF_SF_T0_.exit

bb.g:                                             ; preds = %bb.a
  %i.ab = icmp slt i64 %i.j, %i.o
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = load i64, ptr %i.g, align 8, !tbaa !8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load <2 x i64>, ptr %0, align 8, !tbaa !8
  store i64 %i.ac, ptr %0, align 8, !tbaa !8
  store i64 %i.j, ptr %i.ad, align 8, !tbaa !8
  store <2 x i64> %i.ae, ptr %i.g, align 8, !tbaa !8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_6MatrixIxEEEExRKT_SH_SH_RKS5_IxSaIxEESL_SL_SL_SL_SL_RSJ_SM_SM_SM_EUlRKS3_SO_E_EEEvSF_SF_SF_SF_T0_.exit

bb.i:                                             ; preds = %bb.g
  %i.af = icmp slt i64 %i.l, %i.o
  %i.ag = load i64, ptr %0, align 8, !tbaa !8     ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ai = load i64, ptr %i.h, align 8, !tbaa !8
  store i64 %i.ai, ptr %0, align 8, !tbaa !8
  store i64 %i.ag, ptr %i.h, align 8, !tbaa !8
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !8
  %i.ak = load i64, ptr %i.n, align 8, !tbaa !8
  store i64 %i.ak, ptr %i.ah, align 8, !tbaa !8
  store i64 %i.aj, ptr %i.n, align 8, !tbaa !8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_6MatrixIxEEEExRKT_SH_SH_RKS5_IxSaIxEESL_SL_SL_SL_SL_RSJ_SM_SM_SM_EUlRKS3_SO_E_EEEvSF_SF_SF_SF_T0_.exit

bb.k:                                             ; preds = %bb.i
  %i.al = load i64, ptr %i.f, align 8, !tbaa !8
  store i64 %i.al, ptr %0, align 8, !tbaa !8
  store i64 %i.ag, ptr %i.f, align 8, !tbaa !8
  %i.am = load i64, ptr %i.ah, align 8, !tbaa !8
  store i64 %i.l, ptr %i.ah, align 8, !tbaa !8
  store i64 %i.am, ptr %i.k, align 8, !tbaa !8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_6MatrixIxEEEExRKT_SH_SH_RKS5_IxSaIxEESL_SL_SL_SL_SL_RSJ_SM_SM_SM_EUlRKS3_SO_E_EEEvSF_SF_SF_SF_T0_.exit

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_6MatrixIxEEEExRKT_SH_SH_RKS5_IxSaIxEESL_SL_SL_SL_SL_RSJ_SM_SM_SM_EUlRKS3_SO_E_EEEvSF_SF_SF_SF_T0_.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.h, %bb.j, %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.l

bb.l:                                             ; preds = %bb.o, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_6MatrixIxEEEExRKT_SH_SH_RKS5_IxSaIxEESL_SL_SL_SL_SL_RSJ_SM_SM_SM_EUlRKS3_SO_E_EEEvSF_SF_SF_SF_T0_.exit
  %.sroa.010.0.i = phi ptr [ %i.g, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_6MatrixIxEEEExRKT_SH_SH_RKS5_IxSaIxEESL_SL_SL_SL_SL_RSJ_SM_SM_SM_EUlRKS3_SO_E_EEEvSF_SF_SF_SF_T0_.exit ], [ %i.as, %bb.o ]
  %.sroa.0.0.i = phi ptr [ %1, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_6MatrixIxEEEExRKT_SH_SH_RKS5_IxSaIxEESL_SL_SL_SL_SL_RSJ_SM_SM_SM_EUlRKS3_SO_E_EEEvSF_SF_SF_SF_T0_.exit ], [ %.sroa.0.1.i, %bb.o ]
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !135 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %.sroa.010.1.i = phi ptr [ %.sroa.010.0.i, %bb.l ], [ %i.as, %bb.m ] ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !135
  %i.ar = icmp slt i64 %i.aq, %i.ao
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i, i64 16 ; 2 uses
  br i1 %i.ar, label %bb.m, label %.preheader.i.preheader, !llvm.loop !1913

.preheader.i.preheader:                           ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i, i64 8 ; 2 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.0.0.pn.i = phi ptr [ %.sroa.0.1.i, %.preheader.i ], [ %.sroa.0.0.i, %.preheader.i.preheader ] ; 3 uses
  %.sroa.0.1.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i, i64 -16 ; 5 uses
  %i.au = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i, i64 -8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !135
  %i.aw = icmp slt i64 %i.ao, %i.av
  br i1 %i.aw, label %.preheader.i, label %bb.n, !llvm.loop !1914

bb.n:                                             ; preds = %.preheader.i
  %i.ax = icmp ult ptr %.sroa.010.1.i, %.sroa.0.1.i
  br i1 %i.ax, label %bb.o, label %_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_6MatrixIxEEEExRKT_SH_SH_RKS5_IxSaIxEESL_SL_SL_SL_SL_RSJ_SM_SM_SM_EUlRKS3_SO_E_EEESF_SF_SF_SF_T0_.exit

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i, i64 -8 ; 2 uses
  %i.az = load i64, ptr %.sroa.010.1.i, align 8, !tbaa !8
  %i.ba = load i64, ptr %.sroa.0.1.i, align 8, !tbaa !8
  store i64 %i.ba, ptr %.sroa.010.1.i, align 8, !tbaa !8
  store i64 %i.az, ptr %.sroa.0.1.i, align 8, !tbaa !8
  %i.bb = load i64, ptr %i.at, align 8, !tbaa !8
  %i.bc = load i64, ptr %i.ay, align 8, !tbaa !8
  store i64 %i.bc, ptr %i.at, align 8, !tbaa !8
  store i64 %i.bb, ptr %i.ay, align 8, !tbaa !8
  br label %bb.l, !llvm.loop !1915

_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_6MatrixIxEEEExRKT_SH_SH_RKS5_IxSaIxEESL_SL_SL_SL_SL_RSJ_SM_SM_SM_EUlRKS3_SO_E_EEESF_SF_SF_SF_T0_.exit: ; preds = %bb.n
  ret ptr %.sroa.010.1.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_6MatrixIxEEEExRKT_SH_SH_RKS5_IxSaIxEESL_SL_SL_SL_SL_RSJ_SM_SM_SM_EUlRKS3_SO_E_EEEvSF_SF_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 16
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_6MatrixIxEEEExRKT_SH_SH_RKS5_IxSaIxEESL_SL_SL_SL_SL_RSJ_SM_SM_SM_EUlRKS3_SO_E_EEEvSF_SF_SF_RT0_.exit
  %.sroa.0.05 = phi ptr [ %1, %.lr.ph ], [ %i.f, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_6MatrixIxEEEExRKT_SH_SH_RKS5_IxSaIxEESL_SL_SL_SL_SL_RSJ_SM_SM_SM_EUlRKS3_SO_E_EEEvSF_SF_SF_RT0_.exit ] ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -16 ; 4 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -8 ; 2 uses
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.g = load <2 x i64>, ptr %i.f, align 8
  %i.h = load i64, ptr %0, align 8, !tbaa !8
  store i64 %i.h, ptr %i.f, align 8, !tbaa !133
  %i.i = load i64, ptr %i.e, align 8, !tbaa !8
  store i64 %i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !135
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.j, %i.a                       ; 3 uses
  %i.l = ashr exact i64 %i.k, 4                   ; 3 uses
  %i.m = add nsw i64 %i.l, -1
  %3 = lshr i64 %i.m, 1
  %i.n = icmp sgt i64 %i.l, 2
  br i1 %i.n, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.037.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.o = shl i64 %.037.i.i, 1                     ; 2 uses
  %i.p = add i64 %i.o, 2                          ; 2 uses
  %i.q = getelementptr inbounds [16 x i8], ptr %0, i64 %i.p
  %i.r = or disjoint i64 %i.o, 1                  ; 2 uses
  %i.s = getelementptr inbounds [16 x i8], ptr %0, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !135
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !135
  %i.x = icmp slt i64 %i.u, %i.w
  %spec.select.i.i = select i1 %i.x, i64 %i.r, i64 %i.p ; 4 uses
  %i.y = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i
  %i.z = getelementptr inbounds [16 x i8], ptr %0, i64 %.037.i.i
  %i.aa = load <2 x i64>, ptr %i.y, align 8, !tbaa !8
  store <2 x i64> %i.aa, ptr %i.z, align 8, !tbaa !8
  %i.ab = icmp slt i64 %spec.select.i.i, %3
  br i1 %i.ab, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !1916

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.ac = and i64 %i.k, 16
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.ae = add nsw i64 %i.l, -2
  %i.af = ashr exact i64 %i.ae, 1
  %i.ag = icmp eq i64 %.0.lcssa.i.i, %i.af
  br i1 %i.ag, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c
  %i.ah = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.ai = or disjoint i64 %i.ah, 1                ; 2 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ai
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i
  %i.al = load <2 x i64>, ptr %i.aj, align 8, !tbaa !8
  store <2 x i64> %i.al, ptr %i.ak, align 8, !tbaa !8
  br label %.lr.ph.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_6MatrixIxEEEExRKT_SH_SH_RKS5_IxSaIxEESL_SL_SL_SL_SL_RSJ_SM_SM_SM_EUlRKS3_SO_E_EEEvSF_SF_SF_RT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.d, %.thread.i
  %.020.i.i.i.ph = phi i64 [ %.0.lcssa.i.i, %bb.d ], [ %i.ai, %.thread.i ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.e
  %.020.i.i.i = phi i64 [ %.0921.i.i89.i, %bb.e ], [ %.020.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.0921.in.i.i.i = add nsw i64 %.020.i.i.i, -1
  %.0921.i.i89.i = lshr i64 %.0921.in.i.i.i, 1    ; 3 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0921.i.i89.i ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !135 ; 2 uses
  %i.ap = icmp slt i64 %i.ao, %.sroa.4.0.copyload.i
  br i1 %i.ap, label %bb.e, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_6MatrixIxEEEExRKT_SH_SH_RKS5_IxSaIxEESL_SL_SL_SL_SL_RSJ_SM_SM_SM_EUlRKS3_SO_E_EEEvSF_SF_SF_RT0_.exit

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.aq = getelementptr inbounds [16 x i8], ptr %0, i64 %.020.i.i.i ; 2 uses
  %i.ar = load i64, ptr %i.am, align 8, !tbaa !8
  store i64 %i.ar, ptr %i.aq, align 8, !tbaa !133
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i64 %i.ao, ptr %i.as, align 8, !tbaa !135
  %.not10.i = icmp eq i64 %.0921.i.i89.i, 0
  br i1 %.not10.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_6MatrixIxEEEExRKT_SH_SH_RKS5_IxSaIxEESL_SL_SL_SL_SL_RSJ_SM_SM_SM_EUlRKS3_SO_E_EEEvSF_SF_SF_RT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !1917

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_6MatrixIxEEEExRKT_SH_SH_RKS5_IxSaIxEESL_SL_SL_SL_SL_RSJ_SM_SM_SM_EUlRKS3_SO_E_EEEvSF_SF_SF_RT0_.exit: ; preds = %.lr.ph.i.i.i, %bb.e, %bb.d
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.d ], [ %.020.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.e ]
  %i.at = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store <2 x i64> %i.g, ptr %i.at, align 8, !tbaa !8
  %i.au = icmp sgt i64 %i.k, 16
  br i1 %i.au, label %bb.b, label %._crit_edge, !llvm.loop !1918

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_6MatrixIxEEEExRKT_SH_SH_RKS5_IxSaIxEESL_SL_SL_SL_SL_RSJ_SM_SM_SM_EUlRKS3_SO_E_EEEvSF_SF_SF_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_6MatrixIxEEEExRKT_SH_SH_RKS5_IxSaIxEESL_SL_SL_SL_SL_RSJ_SM_SM_SM_EUlRKS3_SO_E_EEEvSF_SF_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.c, 16
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_6MatrixIxEEEExRKT_SH_SH_RKS5_IxSaIxEESL_SL_SL_SL_SL_RSJ_SM_SM_SM_EUlRKS3_SO_E_EEEvSF_T0_SR_T1_T2_.exit, %bb.b
  %.010 = phi i64 [ %i.g, %bb.b ], [ %i.as, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_6MatrixIxEEEExRKT_SH_SH_RKS5_IxSaIxEESL_SL_SL_SL_SL_RSJ_SM_SM_SM_EUlRKS3_SO_E_EEEvSF_T0_SR_T1_T2_.exit ] ; 8 uses
  %i.p = getelementptr inbounds [16 x i8], ptr %0, i64 %.010 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  %i.q = load <2 x i64>, ptr %i.p, align 8
  %i.r = icmp slt i64 %.010, %i.i
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.037.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.010, %bb.c ] ; 2 uses
  %i.s = shl i64 %.037.i, 1                       ; 2 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [16 x i8], ptr %0, i64 %i.t
  %i.v = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.w = getelementptr inbounds [16 x i8], ptr %0, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !135
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !135
  %i.ab = icmp slt i64 %i.y, %i.aa
  %spec.select.i = select i1 %i.ab, i64 %i.v, i64 %i.t ; 4 uses
  %i.ac = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i
  %i.ad = getelementptr inbounds [16 x i8], ptr %0, i64 %.037.i
  %i.ae = load <2 x i64>, ptr %i.ac, align 8, !tbaa !8
  store <2 x i64> %i.ae, ptr %i.ad, align 8, !tbaa !8
  %i.af = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.af, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1916

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.010, %bb.c ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.ag = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.ag, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.ah = load <2 x i64>, ptr %i.n, align 8, !tbaa !8
  store <2 x i64> %i.ah, ptr %i.o, align 8, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.ai = icmp sgt i64 %.1.i, %.010
  br i1 %i.ai, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_6MatrixIxEEEExRKT_SH_SH_RKS5_IxSaIxEESL_SL_SL_SL_SL_RSJ_SM_SM_SM_EUlRKS3_SO_E_EEEvSF_T0_SR_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.020.i.i = phi i64 [ %.0921.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0921.in.i.i = add nsw i64 %.020.i.i, -1
  %.0921.i.i = sdiv i64 %.0921.in.i.i, 2          ; 4 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0921.i.i ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !135 ; 2 uses
  %i.am = icmp slt i64 %i.al, %.sroa.4.0.copyload
  br i1 %i.am, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_6MatrixIxEEEExRKT_SH_SH_RKS5_IxSaIxEESL_SL_SL_SL_SL_RSJ_SM_SM_SM_EUlRKS3_SO_E_EEEvSF_T0_SR_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.020.i.i ; 2 uses
  %i.ao = load i64, ptr %i.aj, align 8, !tbaa !8
  store i64 %i.ao, ptr %i.an, align 8, !tbaa !133
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 %i.al, ptr %i.ap, align 8, !tbaa !135
  %i.aq = icmp sgt i64 %.0921.i.i, %.010
  br i1 %i.aq, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_6MatrixIxEEEExRKT_SH_SH_RKS5_IxSaIxEESL_SL_SL_SL_SL_RSJ_SM_SM_SM_EUlRKS3_SO_E_EEEvSF_T0_SR_T1_T2_.exit, !llvm.loop !1917

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_6MatrixIxEEEExRKT_SH_SH_RKS5_IxSaIxEESL_SL_SL_SL_SL_RSJ_SM_SM_SM_EUlRKS3_SO_E_EEEvSF_T0_SR_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0921.i.i, %bb.f ], [ %.020.i.i, %.lr.ph.i.i ]
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i
  store <2 x i64> %i.q, ptr %i.ar, align 8, !tbaa !8
  %.not = icmp eq i64 %.010, 0
  %i.as = add nsw i64 %.010, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !1919

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIxxESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN6casadi16einstein_processINSB_6MatrixIxEEEExRKT_SH_SH_RKS5_IxSaIxEESL_SL_SL_SL_SL_RSJ_SM_SM_SM_EUlRKS3_SO_E_EEEvSF_T0_SR_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #20

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIxSt4pairIKxxESt10_Select1stIS2_ESt4lessIxESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1897
  tail call void @_ZNSt8_Rb_treeIxSt4pairIKxxESt10_Select1stIS2_ESt4lessIxESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1898 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #27
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1920

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6casadi9SubMatrixINS_6MatrixIxEENS_5SliceExEC2ERS2_RKS3_RKx(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.casadi::Matrix", align 8    ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6casadi8SparsityC1Exx(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0, i64 noundef 0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.c, align 8, !tbaa !282
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load i64, ptr %3, align 8, !tbaa !8      ; 2 uses
  store i64 %i.f, ptr %i.e, align 8, !tbaa !517
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.g = sitofp i64 %i.f to double
  invoke void @_ZN6casadi6MatrixIxEC1Ed(ptr noundef nonnull align 8 dereferenceable(40) %4, double noundef %i.g)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6casadi6MatrixIxE3getERS1_bRKNS_5SliceERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %0, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(40) %4)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIxSaIxEED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
end_hunk_1
