Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/quantile?download=true
inline.NumInlined: 5688
inline.NumDeleted: 1647
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN7xgboost6common19HostSketchContainerC2EPKNS_7ContextEiNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEESt6vectorImSaImEEb:bb.a

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit68.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.bg unwind label %bb.bd

bb.bd:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit68.i, %.noexc.i105, %bb.bc
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.be:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit.i, %_ZN4dmlc15LogMessageFatalC2EPKci.exit.i
  %i.ix = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.bf unwind label %bb.bp

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.pn.i = phi { ptr, i32 } [ %i.iw, %bb.bd ], [ %i.ix, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

bb.bg:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit68.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  %.pr1.i = load ptr, ptr %8, align 8, !tbaa !80  ; 4 uses
  %.not.i69.i = icmp eq ptr %.pr1.i, null
  br i1 %.not.i69.i, label %.preheader4.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.iy = load ptr, ptr %.pr1.i, align 8, !tbaa !81 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.pr1.i, i64 16 ; 2 uses
  %i.ja = icmp eq ptr %i.iy, %i.iz
  br i1 %i.ja, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.bh
  %i.jb = load i64, ptr %i.iz, align 8, !tbaa !83
  %i.jc = add i64 %i.jb, 1
  call void @_ZdlPvm(ptr noundef %i.iy, i64 noundef %i.jc) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr1.i, i64 noundef 32) #31
  br label %.preheader4.i

.preheader4.i:                                    ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.i, %.noexc107, %bb.bg, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %10, i8 0, i64 48, i1 false)
  %.not33.i = icmp eq ptr %i.id, %i.ie
  br i1 %.not33.i, label %.thread125, label %.lr.ph25.i

.thread125:                                       ; preds = %.preheader4.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  br label %_ZN4dmlc12OMPExceptionD2Ev.exit.i

.lr.ph25.i:                                       ; preds = %.preheader4.i, %bb.bi
  %.05424.i = phi i64 [ %i.jd, %bb.bi ], [ 0, %.preheader4.i ] ; 2 uses
  invoke fastcc void @"_ZN4dmlc12OMPException3RunIZN7xgboost6common19HostSketchContainerC1EPKNS2_7ContextEiNS3_4SpanIKNS2_11FeatureTypeELm18446744073709551615EEESt6vectorImSaImEEbE3$_0JmEEEvT_DpT0_"(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr nonnull readonly %0, i64 noundef %.05424.i)
          to label %bb.bi unwind label %bb.bj

bb.bi:                                            ; preds = %.lr.ph25.i
  %i.jd = add nuw i64 %.05424.i, 1                ; 2 uses
  %exitcond44.not.i = icmp eq i64 %i.jd, %i.ii
  br i1 %exitcond44.not.i, label %bb.bk, label %.lr.ph25.i, !llvm.loop !377

bb.bj:                                            ; preds = %.lr.ph25.i
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.bk:                                            ; preds = %bb.bi
  %.pr3.pr.i = load ptr, ptr %10, align 8, !tbaa !185 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %.not.i70.i = icmp eq ptr %.pr3.pr.i, null
  br i1 %.not.i70.i, label %_ZN4dmlc12OMPExceptionD2Ev.exit.i, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i: ; preds = %bb.bk
  store ptr %.pr3.pr.i, ptr %7, align 8, !tbaa !185
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #15
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %7) #29
          to label %bb.bl unwind label %bb.bm

bb.bl:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i
  unreachable

bb.bm:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i.i
  %i.jf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jg = load ptr, ptr %7, align 8, !tbaa !185
  %.not.i2.i.i = icmp eq ptr %i.jg, null
  br i1 %.not.i2.i.i, label %.body.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #15
  br label %.body.i

_ZN4dmlc12OMPExceptionD2Ev.exit.i:                ; preds = %.thread125, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br label %"_ZN7xgboost6common11ParallelForImZNS0_19HostSketchContainerC1EPKNS_7ContextEiNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEESt6vectorImSaImEEbE3$_0EEvT_iNS0_5SchedEOT0_.exit"

.body.i:                                          ; preds = %bb.bn, %bb.bm, %bb.bj
  %.pn58.i = phi { ptr, i32 } [ %i.jf, %bb.bm ], [ %i.je, %bb.bj ], [ %i.jf, %bb.bn ]
  %i.jh = load ptr, ptr %10, align 8, !tbaa !185
  %.not.i.i72.i = icmp eq ptr %i.jh, null
  br i1 %.not.i.i72.i, label %_ZN4dmlc12OMPExceptionD2Ev.exit74.i, label %bb.bo

bb.bo:                                            ; preds = %.body.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(48) %10) #15
  br label %_ZN4dmlc12OMPExceptionD2Ev.exit74.i

_ZN4dmlc12OMPExceptionD2Ev.exit74.i:              ; preds = %bb.bo, %.body.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

bb.bp:                                            ; preds = %bb.be
  %i.ji = landingpad { ptr, i32 }
          catch ptr null
  %i.jj = extractvalue { ptr, i32 } %i.ji, 0
  call void @__clang_call_terminate(ptr %i.jj) #32
  unreachable

"_ZN7xgboost6common11ParallelForImZNS0_19HostSketchContainerC1EPKNS_7ContextEiNS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEESt6vectorImSaImEEbE3$_0EEvT_iNS0_5SchedEOT0_.exit": ; preds = %.noexc106, %_ZN4dmlc12OMPExceptionD2Ev.exit.i, %.preheader.i
  ret void

bb.bq:                                            ; preds = %bb.al, %bb.ai
  %.pn31.pn = phi { ptr, i32 } [ %.pn31, %bb.al ], [ %i.fo, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

.loopexit:                                        ; preds = %.lr.ph27.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

.loopexit.split-lp:                               ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %bb.i, %.loopexit, %.loopexit.split-lp, %_ZN4dmlc12OMPExceptionD2Ev.exit74.i, %bb.bf, %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59, %bb.bq, %bb.ah, %bb.ag, %bb.r
  %.pn34 = phi { ptr, i32 } [ %i.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59 ], [ %i.fn, %bb.ah ], [ %.pn31.pn, %bb.bq ], [ %.pn28.pn, %bb.ag ], [ %.pn25.pn, %bb.r ], [ %i.cy, %bb.h ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %.pn.i, %bb.bf ], [ %.pn58.i, %_ZN4dmlc12OMPExceptionD2Ev.exit74.i ], [ %lpad.loopexit, %.loopexit ], [ %i.cz, %bb.i ]
  call void @_ZN7xgboost6common7MonitorD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.y) #15
  br label %bb.br

bb.br:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %bb.g
  %.pn34.pn = phi { ptr, i32 } [ %.pn34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ], [ %i.cx, %bb.g ] ; 2 uses
  %i.jk = load ptr, ptr %i.n, align 8, !tbaa !176 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.jk, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.jl = load ptr, ptr %i.q, align 8, !tbaa !167
  %i.jm = ptrtoint ptr %i.jl to i64
  %i.jn = ptrtoint ptr %i.jk to i64
  %i.jo = sub i64 %i.jm, %i.jn
  call void @_ZdlPvm(ptr noundef nonnull %i.jk, i64 noundef %i.jo) #31
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.br, %bb.bs
  %i.jp = load ptr, ptr %i.l, align 8, !tbaa !186 ; 3 uses
  %.not.i.i.i108 = icmp eq ptr %i.jp, null
  br i1 %.not.i.i.i108, label %_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EED2Ev.exit, label %bb.bt

bb.bt:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !187
  %i.js = ptrtoint ptr %i.jr to i64
  %i.jt = ptrtoint ptr %i.jp to i64
  %i.ju = sub i64 %i.js, %i.jt
  call void @_ZdlPvm(ptr noundef nonnull %i.jp, i64 noundef %i.ju) #31
  br label %_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EED2Ev.exit: ; preds = %bb.bt, %_ZNSt6vectorImSaImEED2Ev.exit, %bb.f
  %.pn34.pn.pn = phi { ptr, i32 } [ %i.cw, %bb.f ], [ %.pn34.pn, %_ZNSt6vectorImSaImEED2Ev.exit ], [ %.pn34.pn, %bb.bt ]
  call void @_ZNSt6vectorISt3setIfSt4lessIfESaIfEESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.k) #15
  call void @_ZNSt6vectorIN7xgboost6common15WQuantileSketchESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #15
  resume { ptr, i32 } %.pn34.pn.pn

bb.bu:                                            ; preds = %bb.ak, %bb.u, %bb.l
  %i.jv = landingpad { ptr, i32 }
          catch ptr null
  %i.jw = extractvalue { ptr, i32 } %i.jv, 0
  call void @__clang_call_terminate(ptr %i.jw) #32
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EEC2INS0_6common6detail12SpanIteratorINS5_4SpanIKS1_Lm18446744073709551615EEELb1EEEvEET_SC_RKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr %3, i64 %4, ptr noundef nonnull align 1 dereferenceable(1) %5) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = icmp eq ptr %3, %1
  br i1 %i.a, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEELb1EEmiES7_.exit.i, label %bb.b, !prof !75

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #32
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEELb1EEmiES7_.exit.i: ; preds = %bb.a
  %i.b = sub i64 %4, %2                           ; 5 uses
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.c:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEELb1EEmiES7_.exit.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #29
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEELb1EEmiES7_.exit.i
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.d = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.b) #30
          to label %.noexc7 unwind label %bb.f    ; 3 uses

.noexc7:                                          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  store ptr %i.d, ptr %0, align 8, !tbaa !186
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.f, align 8, !tbaa !187
  %i.g = load i64, ptr %1, align 8, !tbaa !383
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %umax.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %2)
  br label %bb.d

bb.d:                                             ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEELb1EEppEv.exit.i.i.i.i.i.i.i.i.i.a, %.noexc7
  %.011.i.i.i.i.i.i.i.i.i = phi ptr [ %i.d, %.noexc7 ], [ %i.l, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEELb1EEppEv.exit.i.i.i.i.i.i.i.i.i.a ] ; 2 uses
  %.0410.i.i.i.i.i.i.i.i.i = phi i64 [ %i.b, %.noexc7 ], [ %i.m, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEELb1EEppEv.exit.i.i.i.i.i.i.i.i.i.a ] ; 2 uses
  %.sroa.3.09.i.i.i.i.i.i.i.i.i = phi i64 [ %2, %.noexc7 ], [ %i.k, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEELb1EEppEv.exit.i.i.i.i.i.i.i.i.i.a ] ; 3 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.3.09.i.i.i.i.i.i.i.i.i, %umax.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %bb.e, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEELb1EEppEv.exit.i.i.i.i.i.i.i.i.i.a, !prof !73

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt9terminatev() #32
  unreachable

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEELb1EEppEv.exit.i.i.i.i.i.i.i.i.i.a: ; preds = %bb.d
  %6 = load ptr, ptr %i.h, align 8, !tbaa !384
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 %.sroa.3.09.i.i.i.i.i.i.i.i.i
  %i.j = load i8, ptr %i.i, align 1, !tbaa !183
  store i8 %i.j, ptr %.011.i.i.i.i.i.i.i.i.i, align 1, !tbaa !183
  %i.k = add i64 %.sroa.3.09.i.i.i.i.i.i.i.i.i, 1
  %i.l = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i.i.i, i64 1 ; 2 uses
  %i.m = add nsw i64 %.0410.i.i.i.i.i.i.i.i.i, -1
  %i.n = icmp sgt i64 %.0410.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.n, label %bb.d, label %.loopexit, !llvm.loop !381

.loopexit:                                        ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEELb1EEppEv.exit.i.i.i.i.i.i.i.i.i.a, %_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.l, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEELb1EEppEv.exit.i.i.i.i.i.i.i.i.i.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i, ptr %i.o, align 8, !tbaa !188
  ret void

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !tbaa !186    ; 3 uses
  %.not.i.i8 = icmp eq ptr %i.q, null
  br i1 %.not.i.i8, label %_ZNSt12_Vector_baseIN7xgboost11FeatureTypeESaIS1_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !187
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #31
  br label %_ZNSt12_Vector_baseIN7xgboost11FeatureTypeESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN7xgboost11FeatureTypeESaIS1_EED2Ev.exit: ; preds = %bb.f, %bb.g
  resume { ptr, i32 } %i.p
}

declare noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7xgboost6common7MonitorD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZNK7xgboost6common7Monitor5PrintEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #15
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.a, align 8, !tbaa !78
  %i.c = sub i64 %i.b, %.sroa.0.0.copyload.i2.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !385
  %i.f = add nsw i64 %i.c, %i.e
  store i64 %i.f, ptr %i.d, align 8, !tbaa !385
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !172
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7xgboost6common7Monitor10StatisticsEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef %i.i)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7xgboost6common7Monitor10StatisticsESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #32
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7xgboost6common7Monitor10StatisticsESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev.exit: ; preds = %bb.b
  %i.l = load ptr, ptr %0, align 8, !tbaa !81     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7xgboost6common7Monitor10StatisticsESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev.exit
  %i.o = load i64, ptr %i.m, align 8, !tbaa !83
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7xgboost6common7Monitor10StatisticsESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void

bb.d:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #32
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt3setIfSt4lessIfESaIfEESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !180    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !179  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt3setIfSt4lessIfESaIfEES4_EvT_S6_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt3setIfSt4lessIfESaIfEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.h, %_ZSt8_DestroyISt3setIfSt4lessIfESaIfEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !172
  invoke void @_ZNSt8_Rb_treeIffSt9_IdentityIfESt4lessIfESaIfEE8_M_eraseEPSt13_Rb_tree_nodeIfE(ptr noundef nonnull align 8 dereferenceable(48) %.05.i.i, ptr noundef %i.e)
          to label %_ZSt8_DestroyISt3setIfSt4lessIfESaIfEEEvPT_.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #32
  unreachable

_ZSt8_DestroyISt3setIfSt4lessIfESaIfEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt3setIfSt4lessIfESaIfEES4_EvT_S6_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt3setIfSt4lessIfESaIfEES4_EvT_S6_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt3setIfSt4lessIfESaIfEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !180
  br label %_ZSt8_DestroyIPSt3setIfSt4lessIfESaIfEES4_EvT_S6_RSaIT0_E.exit

_ZSt8_DestroyIPSt3setIfSt4lessIfESaIfEES4_EvT_S6_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt3setIfSt4lessIfESaIfEES4_EvT_S6_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.i = phi ptr [ %.pr, %_ZSt8_DestroyIPSt3setIfSt4lessIfESaIfEES4_EvT_S6_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt3setIfSt4lessIfESaIfEESaIS4_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt3setIfSt4lessIfESaIfEES4_EvT_S6_RSaIT0_E.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !189
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #31
  br label %_ZNSt12_Vector_baseISt3setIfSt4lessIfESaIfEESaIS4_EED2Ev.exit

_ZNSt12_Vector_baseISt3setIfSt4lessIfESaIfEESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt3setIfSt4lessIfESaIfEES4_EvT_S6_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN7xgboost6common15WQuantileSketchESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !178
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !177
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN7xgboost6common15WQuantileSketchEEEvT_S6_(ptr noundef %i.a, ptr noundef %i.c)
          to label %_ZSt8_DestroyIPN7xgboost6common15WQuantileSketchES2_EvT_S4_RSaIT0_E.exit unwind label %bb.c

_ZSt8_DestroyIPN7xgboost6common15WQuantileSketchES2_EvT_S4_RSaIT0_E.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !178    ; 3 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN7xgboost6common15WQuantileSketchESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN7xgboost6common15WQuantileSketchES2_EvT_S4_RSaIT0_E.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !190
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #31
  br label %_ZNSt12_Vector_baseIN7xgboost6common15WQuantileSketchESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN7xgboost6common15WQuantileSketchESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7xgboost6common15WQuantileSketchES2_EvT_S4_RSaIT0_E.exit, %bb.b
  ret void

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #32
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN7xgboost6common19HostSketchContainer11PushRowPageERKNS_10SparsePageERKNS_8MetaInfoENS0_4SpanIKfLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(248) %2, i64 %3, ptr nofree readonly captures(none) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %7 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %8 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %9 = alloca %class.anon.141, align 8            ; 12 uses
  %10 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %11 = alloca %"class.std::unique_ptr", align 8  ; 9 uses
  %12 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %13 = alloca %"class.dmlc::OMPException", align 8 ; 16 uses
  %14 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %15 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %16 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %17 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %18 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %19 = alloca %"class.std::unique_ptr", align 8  ; 9 uses
  %20 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %21 = alloca %"class.dmlc::OMPException", align 8 ; 14 uses
  %22 = alloca %"class.std::vector.142", align 8  ; 8 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %23 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %24 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %25 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %26 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.j = alloca i64, align 8                      ; 6 uses
  %i.k = alloca i64, align 8                      ; 8 uses
  %27 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %28 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %29 = alloca %class.anon.52, align 1            ; 3 uses
end_hunk_0
