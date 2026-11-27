Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/sx_instantiator?download=true
inline.NumInlined: 12553
inline.NumDeleted: 2540
loop-unroll.NumCompletelyUnrolled: 68
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 83
begin_hunk_0_@_ZN6casadi6MatrixINS_6SXElemEE12print_vectorERSoRKNS_8SparsityEPKS1_b:bb.a
  %.3 = phi i1 [ true, %bb.m ], [ %.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ] ; 2 uses
  %i.z = load ptr, ptr %11, align 8, !tbaa !66    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !67
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94, %bb.l
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.f, %bb.l ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ] ; 2 uses
  %.4 = phi i1 [ true, %bb.l ], [ %.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94 ], [ %.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  %i.ae = load ptr, ptr %5, align 8, !tbaa !66    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !67
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97, %bb.k
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.e, %bb.k ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96 ] ; 4 uses
  %.5 = phi i1 [ true, %bb.k ], [ %.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97 ], [ %.4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96 ] ; 2 uses
  %i.aj = load ptr, ptr %6, align 8, !tbaa !66    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !67
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100
  %i.ao = load ptr, ptr %7, align 8, !tbaa !66    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.thread: ; preds = %bb.c
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = load ptr, ptr %7, align 8, !tbaa !66    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.thread
  %i.av = load i64, ptr %i.at, align 8, !tbaa !67
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #31
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102
  %i.ax = load i64, ptr %i.ap, align 8, !tbaa !67
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ay) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br i1 %.5, label %bb.q, label %bb.aq

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br i1 %.5, label %bb.q, label %bb.aq

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103.thread
  %.pn.pn.pn.pn.pn.pn.pn143.ph = phi { ptr, i32 } [ %i.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.thread ], [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105
  %.pn.pn.pn.pn.pn.pn.pn143 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105 ], [ %.pn.pn.pn.pn.pn.pn.pn143.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.c) #30
  br label %bb.aq

bb.r:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %i.az = invoke noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.s unwind label %.loopexit.split-lp160.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN6casadi6MatrixINS_6SXElemEE11print_splitExPKS1_RSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EESE_(i64 noundef %i.az, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit107.preheader unwind label %.loopexit.split-lp160.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit107.preheader: ; preds = %bb.s
  %i.ba = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit107

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit107: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit107.preheader, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %.045 = phi i64 [ %i.bq, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit107.preheader ] ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !77 ; 3 uses
  %i.bc = load ptr, ptr %15, align 8, !tbaa !76   ; 4 uses
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = ashr exact i64 %i.bf, 5
  %i.bh = icmp ult i64 %.045, %i.bg
  br i1 %i.bh, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit107
  %.not.i.i = icmp eq ptr %i.bb, %i.bc
  br i1 %.not.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.t, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bn, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.bc, %bb.t ] ; 3 uses
  %i.bi = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !66 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !67
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #31
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bn, %i.bb
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !77
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit: ; preds = %bb.t, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.bo = invoke noundef ptr @_ZNK6casadi8Sparsity3rowEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.v unwind label %.loopexit.split-lp160.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.u:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit107
  %i.bp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.191, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp160.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.u
  %i.bq = add nuw nsw i64 %.045, 1                ; 2 uses
  %i.br = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIxEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.bq)
          to label %_ZNSolsEx.exit unwind label %.loopexit.split-lp160.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZNSolsEx.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.br, ptr noundef nonnull @.str.192, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106 unwind label %.loopexit.split-lp160.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106: ; preds = %_ZNSolsEx.exit
  %i.bt = load ptr, ptr %15, align 8, !tbaa !76
  %i.bu = getelementptr inbounds nuw [32 x i8], ptr %i.bt, i64 %.045 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !66
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !68
  %i.by = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.br, ptr noundef %i.bv, i64 noundef %i.bx)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %.loopexit.split-lp160.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106
  %i.bz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.by, ptr noundef nonnull @.str.193, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit107 unwind label %.loopexit.split-lp160.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.v:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  %i.ca = invoke noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.w unwind label %.loopexit.split-lp160.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.w:                                             ; preds = %bb.v
  %i.cb = invoke noundef i64 @_ZNK6casadi8Sparsity5size1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.x unwind label %.loopexit.split-lp160.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.x:                                             ; preds = %bb.w
  %i.cc = icmp sgt i64 %i.cb, 1000
  %narrow = and i1 %3, %i.cc
  %i.cd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.194, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit108.preheader unwind label %.loopexit.split-lp160.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit108.preheader: ; preds = %bb.x
  %i.ce = icmp sgt i64 %i.cb, 0
  br i1 %i.ce, label %.lr.ph, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit108._crit_edge

.lr.ph:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit108.preheader
  %i.cf = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 16 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 6 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %16, i64 18 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.cj = add nsw i64 %i.cb, -3
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  %i.ck = icmp sgt i64 %i.ca, 0
  br i1 %i.ck, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph
  %i.cl = load i64, ptr %i.bo, align 8, !tbaa !84
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph
  store ptr %i.cf, ptr %16, align 8, !tbaa !69
  store i16 12336, ptr %i.cf, align 8
  store i64 2, ptr %i.cg, align 8, !tbaa !68
  store i8 0, ptr %i.ch, align 2, !tbaa !67
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit121.peel

bb.aa:                                            ; preds = %bb.y
  %i.cn = load ptr, ptr %i.ci, align 8, !tbaa !77
  %i.co = load ptr, ptr %14, align 8, !tbaa !76   ; 3 uses
  %.not.i.i110.peel.not = icmp eq ptr %i.cn, %i.co
  br i1 %.not.i.i110.peel.not, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.cf, ptr %16, align 8, !tbaa !69
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !66 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !68 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.cr, ptr %i.a, align 8, !tbaa !70
  %i.cs = icmp ugt i64 %i.cr, 15
  br i1 %i.cs, label %.noexc.i.peel, label %._crit_edge.i.i.peel

.noexc.i.peel:                                    ; preds = %bb.ab
  %i.ct = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc111.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc111.peel:                                   ; preds = %.noexc.i.peel
  store ptr %i.ct, ptr %16, align 8, !tbaa !66
  %i.cu = load i64, ptr %i.a, align 8, !tbaa !70
  store i64 %i.cu, ptr %i.cf, align 8, !tbaa !67
  br label %._crit_edge.i.i.peel

._crit_edge.i.i.peel:                             ; preds = %.noexc111.peel, %bb.ab
  %i.cv = phi ptr [ %i.ct, %.noexc111.peel ], [ %i.cf, %bb.ab ] ; 2 uses
  switch i64 %i.cr, label %bb.ad [
    i64 1, label %bb.ac
    i64 0, label %bb.ae
  ]

bb.ac:                                            ; preds = %._crit_edge.i.i.peel
  %i.cw = load i8, ptr %i.cp, align 1, !tbaa !67
  store i8 %i.cw, ptr %i.cv, align 1, !tbaa !67
  br label %bb.ae

bb.ad:                                            ; preds = %._crit_edge.i.i.peel
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cv, ptr align 1 %i.cp, i64 %i.cr, i1 false)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %._crit_edge.i.i.peel
  %i.cx = load i64, ptr %i.a, align 8, !tbaa !70  ; 2 uses
  store i64 %i.cx, ptr %i.cg, align 8, !tbaa !68
  %i.cy = load ptr, ptr %16, align 8, !tbaa !66
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cx
  store i8 0, ptr %i.cz, align 1, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit121.peel

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit121.peel: ; preds = %bb.z, %bb.ae
  %.1155.peel = phi i64 [ 1, %bb.ae ], [ 0, %bb.z ]
  %.pre197 = load i64, ptr %i.cg, align 8, !tbaa !68
  %.pre = load ptr, ptr %16, align 8, !tbaa !66
  %i.da = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.pre, i64 noundef %.pre197)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit116.peel unwind label %.loopexit191.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit116.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit121.peel
  %i.db = load ptr, ptr %16, align 8, !tbaa !66   ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.cf
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit116.peel
  %i.dd = load i64, ptr %i.cf, align 8, !tbaa !67
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.de) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit116.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  %exitcond.peel.not = icmp eq i64 %i.cb, 1
  br i1 %exitcond.peel.not, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit108._crit_edge, label %.peel.next

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit108._crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126.peel, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit108.preheader
  %i.df = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.196, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit109 unwind label %.loopexit.split-lp160.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp160.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106, %_ZNSolsEx.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.u, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit109, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit108._crit_edge, %bb.x, %bb.w, %bb.s, %bb.r, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, %bb.v
  %lpad.loopexit.split-lp278 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp160

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126
  %.043175 = phi i64 [ %i.eu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126.peel ] ; 5 uses
  %.044174 = phi i64 [ %.1155, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126 ], [ %.1155.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126.peel ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  %i.dg = icmp slt i64 %.044174, %i.ca
  br i1 %i.dg, label %bb.af, label %bb.al

bb.af:                                            ; preds = %.peel.next
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %.044174
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !84
  %i.dj = icmp eq i64 %.043175, %i.di
  br i1 %i.dj, label %bb.ag, label %bb.al

bb.ag:                                            ; preds = %bb.af
  %i.dk = load ptr, ptr %i.ci, align 8, !tbaa !77
  %i.dl = load ptr, ptr %14, align 8, !tbaa !76   ; 2 uses
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = sub i64 %i.dm, %i.dn
  %i.dp = ashr exact i64 %i.do, 5                 ; 2 uses
  %.not.i.i110 = icmp ult i64 %.044174, %i.dp
  br i1 %.not.i.i110, label %bb.ah, label %.loopexit

.loopexit:                                        ; preds = %bb.ag, %bb.aa
  %.044174.lcssa = phi i64 [ 0, %bb.aa ], [ %.044174, %bb.ag ]
  %.lcssa = phi i64 [ 0, %bb.aa ], [ %i.dp, %bb.ag ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.482, i64 noundef %.044174.lcssa, i64 noundef %.lcssa) #28
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.loopexit
  unreachable

bb.ah:                                            ; preds = %bb.ag
  %i.dq = getelementptr inbounds nuw [32 x i8], ptr %i.dl, i64 %.044174 ; 2 uses
  %i.dr = add nuw nsw i64 %.044174, 1
  store ptr %i.cf, ptr %16, align 8, !tbaa !69
  %i.ds = load ptr, ptr %i.dq, align 8, !tbaa !66 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !68 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.du, ptr %i.a, align 8, !tbaa !70
  %i.dv = icmp ugt i64 %i.du, 15
  br i1 %i.dv, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.ah
  %i.dw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc111 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc111:                                        ; preds = %.noexc.i
  store ptr %i.dw, ptr %16, align 8, !tbaa !66
  %i.dx = load i64, ptr %i.a, align 8, !tbaa !70
  store i64 %i.dx, ptr %i.cf, align 8, !tbaa !67
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc111, %bb.ah
  %i.dy = phi ptr [ %i.dw, %.noexc111 ], [ %i.cf, %bb.ah ] ; 2 uses
  switch i64 %i.du, label %bb.aj [
    i64 1, label %bb.ai
    i64 0, label %bb.ak
  ]

bb.ai:                                            ; preds = %._crit_edge.i.i
  %i.dz = load i8, ptr %i.ds, align 1, !tbaa !67
  store i8 %i.dz, ptr %i.dy, align 1, !tbaa !67
  br label %bb.ak

bb.aj:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dy, ptr align 1 %i.ds, i64 %i.du, i1 false)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %._crit_edge.i.i
  %i.ea = load i64, ptr %i.a, align 8, !tbaa !70  ; 2 uses
  store i64 %i.ea, ptr %i.cg, align 8, !tbaa !68
  %i.eb = load ptr, ptr %16, align 8, !tbaa !66
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ea
  store i8 0, ptr %i.ec, align 1, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %.critedge

bb.al:                                            ; preds = %bb.af, %.peel.next
  store ptr %i.cf, ptr %16, align 8, !tbaa !69
  store i16 12336, ptr %i.cf, align 8
  store i64 2, ptr %i.cg, align 8, !tbaa !68
  store i8 0, ptr %i.ch, align 2, !tbaa !67
  br label %.critedge

.critedge:                                        ; preds = %bb.ak, %bb.al
  %.1155 = phi i64 [ %i.dr, %bb.ak ], [ %.044174, %bb.al ]
  %i.ed = icmp samesign ugt i64 %.043175, 2
  %or.cond3 = select i1 %narrow, i1 %i.ed, i1 false
  %i.ee = icmp slt i64 %.043175, %i.cj
  %or.cond = select i1 %or.cond3, i1 %i.ee, i1 false
  br i1 %or.cond, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.critedge
  %i.ef = icmp eq i64 %.043175, 3
  br i1 %i.ef, label %.invoke, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit116

.invoke:                                          ; preds = %bb.am, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit121
  %i.eg = phi ptr [ %i.eo, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit121 ], [ @.str.195, %bb.am ]
  %i.eh = phi i64 [ %i.ep, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit121 ], [ 5, %bb.am ]
  %i.ei = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.eg, i64 noundef %i.eh)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit116 unwind label %.loopexit191.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i, %.noexc.i.peel, %.loopexit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

.loopexit191.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %bb.an, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit121.peel
  %lpad.loopexit.split-lp269 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ej = load ptr, ptr %16, align 8, !tbaa !66   ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.cf
  br i1 %i.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117: ; preds = %.loopexit191.loopexit.split-lp.loopexit.split-lp
  %i.el = load i64, ptr %i.cf, align 8, !tbaa !67
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.em) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

bb.an:                                            ; preds = %.critedge
  %i.en = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.193, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit121 unwind label %.loopexit191.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit121: ; preds = %bb.an
  %i.eo = load ptr, ptr %16, align 8, !tbaa !66
  %i.ep = load i64, ptr %i.cg, align 8, !tbaa !68
  br label %.invoke

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit116: ; preds = %.invoke, %bb.am
  %i.eq = load ptr, ptr %16, align 8, !tbaa !66   ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.cf
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit116
  %i.es = load i64, ptr %i.cf, align 8, !tbaa !67
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.et) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit116, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  %i.eu = add nuw nsw i64 %.043175, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.eu, %i.cb
  br i1 %exitcond.not, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit108._crit_edge, label %.peel.next, !llvm.loop !1464

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119: ; preds = %.loopexit191.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117
  %.pn78 = phi { ptr, i32 } [ %lpad.loopexit.split-lp269, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp269, %.loopexit191.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  br label %.loopexit.split-lp160

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit109: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit108._crit_edge
  %i.ev = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %.loopexit.split-lp160.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit109
  %i.ew = load ptr, ptr %15, align 8, !tbaa !76   ; 3 uses
  %i.ex = load ptr, ptr %i.ba, align 8, !tbaa !77 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ew, %i.ex
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSolsEPFRSoS_E.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.fd, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.ew, %_ZNSolsEPFRSoS_E.exit ] ; 3 uses
  %i.ey = load ptr, ptr %.05.i.i.i, align 8, !tbaa !66 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.fa = icmp eq ptr %i.ey, %i.ez
  br i1 %i.fa, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.fb = load i64, ptr %i.ez, align 8, !tbaa !67
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fc) #31
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.fd = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.fd, %i.ex
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %15, align 8, !tbaa !76
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSolsEPFRSoS_E.exit
  %i.fe = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.ew, %_ZNSolsEPFRSoS_E.exit ] ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN6casadi6MatrixINS_6SXElemEE12print_vectorERSoRKNS_8SparsityEPKS1_b:bb.a
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit139

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit139: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i136, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  ret void

.loopexit.split-lp160:                            ; preds = %.loopexit.split-lp160.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119
  %.pn84 = phi { ptr, i32 } [ %.pn78, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119 ], [ %lpad.loopexit.split-lp278, %.loopexit.split-lp160.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  br label %bb.aq

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, %bb.q, %.loopexit.split-lp160
  %.pn84.pn = phi { ptr, i32 } [ %.pn84, %.loopexit.split-lp160 ], [ %.pn.pn.pn.pn.pn.pn.pn143, %bb.q ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105 ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103 ]
  resume { ptr, i32 } %.pn84.pn

bb.ar:                                            ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZNK6casadi6MatrixINS_6SXElemEE11print_denseERSob(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !60   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !60
  %i.f = icmp eq ptr %i.c, %i.e
  %spec.select.i = select i1 %i.f, ptr null, ptr %i.c
  tail call void @_ZN6casadi6MatrixINS_6SXElemEE11print_denseERSoRKNS_8SparsityEPKS1_b(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %spec.select.i, i1 noundef zeroext %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN6casadi6MatrixINS_6SXElemEE11print_denseERSoRKNS_8SparsityEPKS1_b(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 12 uses
  %4 = alloca %"class.std::vector.7", align 8     ; 13 uses
  %5 = alloca %"class.std::vector.7", align 8     ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.b = invoke noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.b unwind label %.loopexit.split-lp203.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6casadi6MatrixINS_6SXElemEE11print_splitExPKS1_RSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EESE_(i64 noundef %i.b, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106.preheader unwind label %.loopexit.split-lp203.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106.preheader: ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106.preheader, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %.077 = phi i64 [ %i.s, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106.preheader ] ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !77   ; 3 uses
  %i.e = load ptr, ptr %5, align 8, !tbaa !76     ; 4 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 5
  %i.j = icmp ult i64 %.077, %i.i
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106
  %.not.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.p, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.e, %bb.c ] ; 3 uses
  %i.k = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !66 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !67
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #31
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  store ptr %i.e, ptr %i.c, align 8, !tbaa !77
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit: ; preds = %bb.c, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.q = invoke noundef i64 @_ZNK6casadi8Sparsity5size1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.e unwind label %.loopexit.split-lp203.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 7 uses

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.191, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp203.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d
  %i.s = add nuw nsw i64 %.077, 1                 ; 2 uses
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIxEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.s)
          to label %_ZNSolsEx.exit unwind label %.loopexit.split-lp203.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZNSolsEx.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull @.str.192, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit105 unwind label %.loopexit.split-lp203.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit105: ; preds = %_ZNSolsEx.exit
  %i.v = load ptr, ptr %5, align 8, !tbaa !76
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %.077 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !66
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !68
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef %i.x, i64 noundef %i.z)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %.loopexit.split-lp203.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit105
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.193, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106 unwind label %.loopexit.split-lp203.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.e:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit
  %i.ac = invoke noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.f unwind label %.loopexit.split-lp203.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 9 uses

bb.f:                                             ; preds = %bb.e
  %i.ad = invoke noundef ptr @_ZNK6casadi8Sparsity6colindEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.g unwind label %.loopexit.split-lp203.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.g:                                             ; preds = %bb.f
  %i.ae = invoke noundef ptr @_ZNK6casadi8Sparsity3rowEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.h unwind label %.loopexit.split-lp203.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.af = mul nsw i64 %i.ac, %i.q
  %i.ag = icmp sgt i64 %i.af, 1000
  %.088.shrunk = select i1 %3, i1 %i.ag, i1 false ; 2 uses
  %i.ah = icmp samesign ugt i64 %i.q, 6
  %i.ai = and i1 %i.ah, %.088.shrunk
  %i.aj = icmp sgt i64 %i.ac, 6
  %i.ak = and i1 %i.aj, %.088.shrunk
  %.idx = shl nsw i64 %i.ac, 3
  %i.al = add nsw i64 %.idx, 8                    ; 5 uses
  %i.am = icmp ugt i64 %i.al, 9223372036854775800
  br i1 %i.am, label %bb.i, label %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.481) #28
          to label %.noexc.i unwind label %.loopexit.split-lp203.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i:                                         ; preds = %bb.i
  unreachable

_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.h
  %.not.i.i.i = icmp eq i64 %i.ac, -1
  br i1 %.not.i.i.i, label %.thread.i.i, label %_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i.i

.thread.i.i:                                      ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr null, i64 %i.al
  br label %_ZNSt6vectorIxSaIxEEC2IPKxvEET_S5_RKS0_.exit

_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.ao = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #29
          to label %.noexc4.i unwind label %.loopexit.split-lp203.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc4.i:                                        ; preds = %_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.al ; 2 uses
  %i.aq = icmp sgt i64 %i.ac, 0
  br i1 %i.aq, label %bb.j, label %bb.k, !prof !1468

bb.j:                                             ; preds = %.noexc4.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ao, ptr align 8 %i.ad, i64 %i.al, i1 false)
  br label %_ZNSt6vectorIxSaIxEEC2IPKxvEET_S5_RKS0_.exit

bb.k:                                             ; preds = %.noexc4.i
  %i.ar = load i64, ptr %i.ad, align 8, !tbaa !84
  store i64 %i.ar, ptr %i.ao, align 8, !tbaa !84
  br label %_ZNSt6vectorIxSaIxEEC2IPKxvEET_S5_RKS0_.exit

.loopexit.split-lp203.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit105, %_ZNSolsEx.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.d, %_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm.exit.i.i, %bb.i, %bb.f, %bb.b, %bb.a, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit, %bb.e, %bb.g
  %lpad.loopexit.split-lp366 = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorIxSaIxEEC2IPKxvEET_S5_RKS0_.exit:     ; preds = %bb.k, %bb.j, %.thread.i.i
  %.sroa.12.0 = phi ptr [ %i.an, %.thread.i.i ], [ %i.ap, %bb.j ], [ %i.ap, %bb.k ] ; 2 uses
  %.sroa.0183.0 = phi ptr [ null, %.thread.i.i ], [ %i.ao, %bb.j ], [ %i.ao, %bb.k ] ; 9 uses
  %i.as = icmp slt i64 %i.q, 2
  %i.at = icmp sgt i64 %i.q, 0
  br i1 %i.at, label %.lr.ph219, label %._crit_edge220

.lr.ph219:                                        ; preds = %_ZNSt6vectorIxSaIxEEC2IPKxvEET_S5_RKS0_.exit
  %not. = xor i1 %i.ai, true
  %i.au = add nsw i64 %i.q, -3
  %i.av = icmp sgt i64 %i.ac, 0
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 16 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 18 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %not.91 = xor i1 %i.ak, true
  %i.ba = add nsw i64 %i.ac, -3
  %i.bb = add nsw i64 %i.q, -1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %exitcond.peel.not = icmp eq i64 %i.ac, 1
  br label %bb.l

._crit_edge220:                                   ; preds = %_ZNSolsEPFRSoS_E.exit128, %_ZNSt6vectorIxSaIxEEC2IPKxvEET_S5_RKS0_.exit
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %.loopexit.split-lp198.loopexit.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.l:                                             ; preds = %.lr.ph219, %_ZNSolsEPFRSoS_E.exit128
  %.076218 = phi i64 [ 0, %.lr.ph219 ], [ %i.gc, %_ZNSolsEPFRSoS_E.exit128 ] ; 8 uses
  %i.be = icmp samesign ult i64 %.076218, 3
  %or.cond = select i1 %not., i1 true, i1 %i.be
  %i.bf = icmp sge i64 %.076218, %i.au
  %i.bg = select i1 %or.cond, i1 true, i1 %i.bf   ; 4 uses
  %i.bh = icmp eq i64 %.076218, 0
  br i1 %i.bh, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  br i1 %i.as, label %.invoke, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = load ptr, ptr %0, align 8, !tbaa !74
  %i.bj = getelementptr i8, ptr %i.bi, i64 -24
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds i8, ptr %0, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 240
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !196 ; 6 uses
  %.not.i.i.i154 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i154, label %.invoke305, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

.invoke305:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit130, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit126, %bb.n
  invoke void @_ZSt16__throw_bad_castv() #28
          to label %.cont unwind label %.loopexit.split-lp198.loopexit.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke305
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 56
  %i.bp = load i8, ptr %i.bo, align 8, !tbaa !202
  %.not.i1.i.i = icmp eq i8 %i.bp, 0
  br i1 %.not.i1.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 67
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !67
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.p:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bn)
          to label %.noexc156 unwind label %.loopexit.split-lp198.loopexit.loopexit.split-lp.loopexit.split-lp

.noexc156:                                        ; preds = %bb.p
  %i.bs = load ptr, ptr %i.bn, align 8, !tbaa !74
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = invoke noundef signext i8 %i.bu(ptr noundef nonnull align 8 dereferenceable(570) %i.bn, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit.split-lp198.loopexit.loopexit.split-lp.loopexit.split-lp, !inline_history !14

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc156, %bb.o
  %.0.i.i.i = phi i8 [ %i.br, %bb.o ], [ %i.bv, %.noexc156 ]
  %i.bw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %.0.i.i.i)
          to label %.noexc158 unwind label %.loopexit.split-lp198.loopexit.loopexit.split-lp.loopexit.split-lp

.noexc158:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.bx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bw)
          to label %.invoke unwind label %.loopexit.split-lp198.loopexit.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.q:                                             ; preds = %bb.l
  br i1 %i.bg, label %.invoke, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit108

.invoke:                                          ; preds = %bb.q, %bb.m, %.noexc158
  %i.by = phi ptr [ @.str.206, %bb.m ], [ @.str.206, %.noexc158 ], [ @.str.207, %bb.q ]
  %i.bz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.by, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit108 unwind label %.loopexit.split-lp198.loopexit.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit108: ; preds = %.invoke, %bb.q
  br i1 %i.av, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit108
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.ca = load i64, ptr %.sroa.0183.0, align 8, !tbaa !84 ; 6 uses
  %i.cb = load i64, ptr %i.bc, align 8, !tbaa !84
  %i.cc = icmp slt i64 %i.ca, %i.cb
  br i1 %i.cc, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.preheader
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.ca
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !84
  %i.cf = icmp eq i64 %i.ce, %.076218
  br i1 %i.cf, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.preheader
  store ptr %i.aw, ptr %6, align 8, !tbaa !69
  store i16 12336, ptr %i.aw, align 8
  store i64 2, ptr %i.ax, align 8, !tbaa !68
  store i8 0, ptr %i.ay, align 2, !tbaa !67
  br label %.critedge.peel

bb.t:                                             ; preds = %bb.r
  %i.cg = add nsw i64 %i.ca, 1
  store i64 %i.cg, ptr %.sroa.0183.0, align 8, !tbaa !84
  %i.ch = load ptr, ptr %i.az, align 8, !tbaa !77
  %i.ci = load ptr, ptr %4, align 8, !tbaa !76    ; 2 uses
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = ashr exact i64 %i.cl, 5                 ; 2 uses
  %.not.i.i110.peel = icmp ult i64 %i.ca, %i.cm
  br i1 %.not.i.i110.peel, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.t
  %i.cn = getelementptr inbounds nuw [32 x i8], ptr %i.ci, i64 %i.ca ; 2 uses
  store ptr %i.aw, ptr %6, align 8, !tbaa !69
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !66 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !68 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.cq, ptr %i.a, align 8, !tbaa !70
  %i.cr = icmp ugt i64 %i.cq, 15
  br i1 %i.cr, label %.noexc.i111.peel, label %._crit_edge.i.i.peel

.noexc.i111.peel:                                 ; preds = %bb.u
  %i.cs = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc112.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc112.peel:                                   ; preds = %.noexc.i111.peel
  store ptr %i.cs, ptr %6, align 8, !tbaa !66
  %i.ct = load i64, ptr %i.a, align 8, !tbaa !70
  store i64 %i.ct, ptr %i.aw, align 8, !tbaa !67
  br label %._crit_edge.i.i.peel

._crit_edge.i.i.peel:                             ; preds = %.noexc112.peel, %bb.u
  %i.cu = phi ptr [ %i.cs, %.noexc112.peel ], [ %i.aw, %bb.u ] ; 2 uses
  switch i64 %i.cq, label %bb.w [
    i64 1, label %bb.v
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.peel
  ]

bb.v:                                             ; preds = %._crit_edge.i.i.peel
  %i.cv = load i8, ptr %i.co, align 1, !tbaa !67
  store i8 %i.cv, ptr %i.cu, align 1, !tbaa !67
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.peel

bb.w:                                             ; preds = %._crit_edge.i.i.peel
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cu, ptr align 1 %i.co, i64 %i.cq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.peel: ; preds = %bb.w, %bb.v, %._crit_edge.i.i.peel
  %i.cw = load i64, ptr %i.a, align 8, !tbaa !70  ; 2 uses
  store i64 %i.cw, ptr %i.ax, align 8, !tbaa !68
  %i.cx = load ptr, ptr %6, align 8, !tbaa !66
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cw
  store i8 0, ptr %i.cy, align 1, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %.critedge.peel

.critedge.peel:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.peel, %bb.s
  br i1 %i.bg, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117.peel, label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit119.peel

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117.peel: ; preds = %.critedge.peel
  %.pre250 = load i64, ptr %i.ax, align 8, !tbaa !68
  %.pre = load ptr, ptr %6, align 8, !tbaa !66
  %i.cz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.pre, i64 noundef %.pre250)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit119.peel unwind label %.loopexit240.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit119.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117.peel, %.critedge.peel
  %i.da = load ptr, ptr %6, align 8, !tbaa !66    ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.aw
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit119.peel
  %i.dc = load i64, ptr %i.aw, align 8, !tbaa !67
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit119.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br i1 %exitcond.peel.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124.peel, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit108
  %i.de = icmp slt i64 %.076218, %i.bb
  br i1 %i.de, label %bb.ag, label %bb.am

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124
  %.075217 = phi i64 [ %i.dh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124.peel ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0183.0, i64 %.075217 ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !84 ; 6 uses
  %i.dh = add nuw nsw i64 %.075217, 1             ; 3 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.dh
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !84
  %i.dk = icmp slt i64 %i.dg, %i.dj
  br i1 %i.dk, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %.lr.ph
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.dg
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !84
  %i.dn = icmp eq i64 %i.dm, %.076218
  br i1 %i.dn, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.do = add nsw i64 %i.dg, 1
  store i64 %i.do, ptr %i.df, align 8, !tbaa !84
  %i.dp = load ptr, ptr %i.az, align 8, !tbaa !77
  %i.dq = load ptr, ptr %4, align 8, !tbaa !76    ; 2 uses
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = ashr exact i64 %i.dt, 5                 ; 2 uses
  %.not.i.i110 = icmp ult i64 %i.dg, %i.du
  br i1 %.not.i.i110, label %bb.z, label %.loopexit

.loopexit:                                        ; preds = %bb.t, %bb.y
  %.lcssa228 = phi i64 [ %i.dg, %bb.y ], [ %i.ca, %bb.t ]
  %.lcssa = phi i64 [ %i.du, %bb.y ], [ %i.cm, %bb.t ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.482, i64 noundef %.lcssa228, i64 noundef %.lcssa) #28
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.loopexit
  unreachable

bb.z:                                             ; preds = %bb.y
  %i.dv = getelementptr inbounds nuw [32 x i8], ptr %i.dq, i64 %i.dg ; 2 uses
  store ptr %i.aw, ptr %6, align 8, !tbaa !69
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !66 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !68 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.dy, ptr %i.a, align 8, !tbaa !70
  %i.dz = icmp ugt i64 %i.dy, 15
  br i1 %i.dz, label %.noexc.i111, label %._crit_edge.i.i

.noexc.i111:                                      ; preds = %bb.z
  %i.ea = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc112 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc112:                                        ; preds = %.noexc.i111
  store ptr %i.ea, ptr %6, align 8, !tbaa !66
  %i.eb = load i64, ptr %i.a, align 8, !tbaa !70
  store i64 %i.eb, ptr %i.aw, align 8, !tbaa !67
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc112, %bb.z
  %i.ec = phi ptr [ %i.ea, %.noexc112 ], [ %i.aw, %bb.z ] ; 2 uses
  switch i64 %i.dy, label %bb.ab [
    i64 1, label %bb.aa
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.aa:                                            ; preds = %._crit_edge.i.i
  %i.ed = load i8, ptr %i.dw, align 1, !tbaa !67
  store i8 %i.ed, ptr %i.ec, align 1, !tbaa !67
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.ab:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ec, ptr align 1 %i.dw, i64 %i.dy, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.aa, %bb.ab
  %i.ee = load i64, ptr %i.a, align 8, !tbaa !70  ; 2 uses
  store i64 %i.ee, ptr %i.ax, align 8, !tbaa !68
  %i.ef = load ptr, ptr %6, align 8, !tbaa !66
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.ee
  store i8 0, ptr %i.eg, align 1, !tbaa !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %.critedge

bb.ac:                                            ; preds = %bb.x, %.lr.ph
  store ptr %i.aw, ptr %6, align 8, !tbaa !69
  store i16 12336, ptr %i.aw, align 8
  store i64 2, ptr %i.ax, align 8, !tbaa !68
  store i8 0, ptr %i.ay, align 2, !tbaa !67
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %bb.ac
  br i1 %i.bg, label %bb.ad, label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit119

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i111, %.noexc.i111.peel, %.loopexit
  %lpad.loopexit.split-lp349 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ad:                                            ; preds = %.critedge
  %i.eh = icmp samesign ult i64 %.075217, 3
  %or.cond3 = select i1 %not.91, i1 true, i1 %i.eh
  %i.ei = icmp sge i64 %.075217, %i.ba
  %i.ej = select i1 %or.cond3, i1 true, i1 %i.ei
  br i1 %i.ej, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ek = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.193, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117 unwind label %.loopexit240.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit240.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117.invoke, %bb.ae, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117.peel
  %lpad.loopexit.split-lp342 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.el = load ptr, ptr %6, align 8, !tbaa !66    ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.aw
  br i1 %i.em, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.loopexit240.loopexit.split-lp.loopexit.split-lp
  %i.en = load i64, ptr %i.aw, align 8, !tbaa !67
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.eo) #31
  br label %.thread

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117: ; preds = %bb.ae
  %i.ep = load ptr, ptr %6, align 8, !tbaa !66
  %i.eq = load i64, ptr %i.ax, align 8, !tbaa !68
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117.invoke

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117.invoke: ; preds = %bb.af, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117
  %i.er = phi ptr [ %i.ep, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117 ], [ @.str.195, %bb.af ]
  %i.es = phi i64 [ %i.eq, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117 ], [ 5, %bb.af ]
  %i.et = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.er, i64 noundef %i.es)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit119 unwind label %.loopexit240.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.af:                                            ; preds = %bb.ad
  %i.eu = icmp eq i64 %.075217, 3
  br i1 %i.eu, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117.invoke, label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit119

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit119: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117.invoke, %bb.af, %.critedge
  %i.ev = load ptr, ptr %6, align 8, !tbaa !66    ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.aw
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit119
  %i.ex = load i64, ptr %i.aw, align 8, !tbaa !67
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ey) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit119, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %exitcond.not = icmp eq i64 %i.dh, %i.ac
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1466

.thread:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit240.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp342, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %lpad.loopexit.split-lp342, %.loopexit240.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp349, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.aq

bb.ag:                                            ; preds = %._crit_edge
  br i1 %i.bg, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.ez = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.208, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit126 unwind label %.loopexit.split-lp198.loopexit.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit126: ; preds = %bb.ah
  %i.fa = load ptr, ptr %0, align 8, !tbaa !74
  %i.fb = getelementptr i8, ptr %i.fa, i64 -24
  %i.fc = load i64, ptr %i.fb, align 8
  %i.fd = getelementptr inbounds i8, ptr %0, i64 %i.fc
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 240
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !196 ; 5 uses
  %.not.i.i.i160 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i.i160, label %.invoke305, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i161

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i161: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit126
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 56
  %i.fh = load i8, ptr %i.fg, align 8, !tbaa !202
  %.not.i1.i.i162 = icmp eq i8 %i.fh, 0
  br i1 %.not.i1.i.i162, label %bb.ai, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i174.invoke.sink.split

bb.ai:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i161
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ff)
          to label %.noexc177.invoke unwind label %.loopexit.split-lp198.loopexit.loopexit.split-lp.loopexit.split-lp

bb.aj:                                            ; preds = %bb.ag
  %i.fi = icmp eq i64 %.076218, 3
  br i1 %i.fi, label %bb.ak, label %_ZNSolsEPFRSoS_E.exit128

bb.ak:                                            ; preds = %bb.aj
  %i.fj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.209, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit130 unwind label %.loopexit.split-lp198.loopexit.loopexit.split-lp.loopexit.split-lp ; 0 uses
end_hunk_1
