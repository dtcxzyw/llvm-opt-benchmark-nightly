inline.NumInlined: 9993
inline.NumDeleted: 1660
begin_hunk_0_@_ZN6duckdb14AbsOperatorFun12GetFunctionsEv:bb.a
  call void %i.kw(ptr noundef nonnull align 8 dereferenceable(16) %i.kl) #23, !inline_history !35
  br label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i185

bb.ei:                                            ; preds = %bb.eg
  %i.kx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i.i182 = icmp eq i8 %i.kx, 0
  br i1 %.not.i.i.i.i.i182, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.ky = add nsw i32 %i.kp, -1
  store i32 %i.ky, ptr %i.km, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i183

bb.ek:                                            ; preds = %bb.ei
  %i.kz = atomicrmw volatile add ptr %i.km, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i183

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i183: ; preds = %bb.ek, %bb.ej
  %.0.i.i.i.i.i.i184 = phi i32 [ %i.kp, %bb.ej ], [ %i.kz, %bb.ek ]
  %i.la = icmp eq i32 %.0.i.i.i.i.i.i184, 1
  br i1 %i.la, label %bb.el, label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i185, !prof !36

bb.el:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i183
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kl) #23, !inline_history !37
  br label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i185

_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i185: ; preds = %bb.el, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i183, %bb.eh, %_ZN6duckdb11FunctionSetINS_14ScalarFunctionEE11AddFunctionES1_.exit180
  %i.lb = load ptr, ptr %i.ar, align 8, !tbaa !17 ; 2 uses
  %.not.i.i186 = icmp eq ptr %i.lb, null
  br i1 %.not.i.i186, label %_ZN6duckdb14ScalarFunctionD2Ev.exit187, label %bb.em

bb.em:                                            ; preds = %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i185
  %i.lc = invoke noundef zeroext i1 %i.lb(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %i.as, i32 noundef 3)
          to label %_ZN6duckdb14ScalarFunctionD2Ev.exit187 unwind label %bb.en, !inline_history !37 ; 0 uses

bb.en:                                            ; preds = %bb.em
  %i.ld = landingpad { ptr, i32 }
          catch ptr null
  %i.le = extractvalue { ptr, i32 } %i.ld, 0
  call void @__clang_call_terminate(ptr %i.le) #26, !inline_history !37
  unreachable

_ZN6duckdb14ScalarFunctionD2Ev.exit187:           ; preds = %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i185, %bb.em
  call void @_ZN6duckdb18BaseScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %21) #23, !inline_history !37
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %26) #23
  %i.lf = load ptr, ptr %i.aw, align 8, !tbaa !17 ; 2 uses
  %.not.i188 = icmp eq ptr %i.lf, null
  br i1 %.not.i188, label %_ZNSt14_Function_baseD2Ev.exit189, label %bb.eo

bb.eo:                                            ; preds = %_ZN6duckdb14ScalarFunctionD2Ev.exit187
  %i.lg = invoke noundef zeroext i1 %i.lf(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(32) %25, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit189 unwind label %bb.ep ; 0 uses

bb.ep:                                            ; preds = %bb.eo
  %i.lh = landingpad { ptr, i32 }
          catch ptr null
  %i.li = extractvalue { ptr, i32 } %i.lh, 0
  call void @__clang_call_terminate(ptr %i.li) #26
  unreachable

_ZNSt14_Function_baseD2Ev.exit189:                ; preds = %_ZN6duckdb14ScalarFunctionD2Ev.exit187, %bb.eo
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %24) #23
  %i.lj = load ptr, ptr %22, align 8, !tbaa !7    ; 3 uses
  %i.lk = load ptr, ptr %i.ap, align 8, !tbaa !12 ; 2 uses
  %.not4.i.i.i190 = icmp eq ptr %i.lj, %i.lk
  br i1 %.not4.i.i.i190, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i196, label %.lr.ph.i.i.i191

.lr.ph.i.i.i191:                                  ; preds = %_ZNSt14_Function_baseD2Ev.exit189, %.lr.ph.i.i.i191
  %.05.i.i.i192 = phi ptr [ %i.ll, %.lr.ph.i.i.i191 ], [ %i.lj, %_ZNSt14_Function_baseD2Ev.exit189 ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i192) #23
  %i.ll = getelementptr inbounds nuw i8, ptr %.05.i.i.i192, i64 24 ; 2 uses
  %.not.i.i.i193 = icmp eq ptr %i.ll, %i.lk
  br i1 %.not.i.i.i193, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i194, label %.lr.ph.i.i.i191, !llvm.loop !38

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i194: ; preds = %.lr.ph.i.i.i191
  %.pr.i195 = load ptr, ptr %22, align 8, !tbaa !7
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i196

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i196: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i194, %_ZNSt14_Function_baseD2Ev.exit189
  %i.lm = phi ptr [ %.pr.i195, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i194 ], [ %i.lj, %_ZNSt14_Function_baseD2Ev.exit189 ] ; 2 uses
  %.not.i.i1.i197 = icmp eq ptr %i.lm, null
  br i1 %.not.i.i1.i197, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit198, label %bb.eq

bb.eq:                                            ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i196
  call void @_ZdlPv(ptr noundef nonnull %i.lm) #27
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit198

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit198: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i196, %bb.eq
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %23) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  br label %bb.fc

bb.er:                                            ; preds = %bb.dt
  %i.ln = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.es:                                            ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i245
  %i.lo = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

bb.et:                                            ; preds = %bb.dz
  %i.lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Function_baseD2Ev.exit200

bb.eu:                                            ; preds = %bb.ea
  %i.lq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ey

bb.ev:                                            ; preds = %bb.eb
  %i.lr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex

bb.ew:                                            ; preds = %bb.ef, %bb.ed
  %i.ls = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb14ScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %21) #23
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %.pn73 = phi { ptr, i32 } [ %i.ls, %bb.ew ], [ %i.lr, %bb.ev ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %26) #23
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.eu
  %.pn73.pn = phi { ptr, i32 } [ %.pn73, %bb.ex ], [ %i.lq, %bb.eu ] ; 2 uses
  %i.lt = load ptr, ptr %i.aw, align 8, !tbaa !17 ; 2 uses
  %.not.i199 = icmp eq ptr %i.lt, null
  br i1 %.not.i199, label %_ZNSt14_Function_baseD2Ev.exit200, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.lu = invoke noundef zeroext i1 %i.lt(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(32) %25, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit200 unwind label %bb.fa ; 0 uses

bb.fa:                                            ; preds = %bb.ez
  %i.lv = landingpad { ptr, i32 }
          catch ptr null
  %i.lw = extractvalue { ptr, i32 } %i.lv, 0
  call void @__clang_call_terminate(ptr %i.lw) #26
  unreachable

_ZNSt14_Function_baseD2Ev.exit200:                ; preds = %bb.ez, %bb.ey, %bb.et
  %.pn73.pn.pn = phi { ptr, i32 } [ %i.lp, %bb.et ], [ %.pn73.pn, %bb.ey ], [ %.pn73.pn, %bb.ez ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %24) #23
  br label %bb.fb

bb.fb:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit200, %bb.es
  %.pn73.pn.pn.pn = phi { ptr, i32 } [ %.pn73.pn.pn, %_ZNSt14_Function_baseD2Ev.exit200 ], [ %i.lo, %bb.es ]
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %22) #23
  br label %.body172

.body172:                                         ; preds = %.body248.thread, %bb.dy, %.body248, %bb.fb
  %.pn73.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn73.pn.pn.pn, %bb.fb ], [ %i.jt, %.body248 ], [ %i.jt, %bb.dy ], [ %i.jw, %.body248.thread ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %23) #23
  br label %.loopexit

.loopexit:                                        ; preds = %.body172, %bb.er
  %.pn73.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ln, %bb.er ], [ %.pn73.pn.pn.pn.pn, %.body172 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  br label %bb.fd

bb.fc:                                            ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit198, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit167, %_ZN6duckdb14ScalarFunctionD2Ev.exit136, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit93
  %i.lx = getelementptr inbounds nuw i8, ptr %.sroa.0259.0360, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.lx, %i.c
  br i1 %.not, label %._crit_edge, label %bb.e

bb.fd:                                            ; preds = %.loopexit, %.loopexit268, %bb.cl, %.loopexit266
  %.pn73.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn73.pn.pn.pn.pn.pn, %.loopexit ], [ %.pn67.pn.pn.pn.pn, %.loopexit266 ], [ %.pn64.pn, %bb.cl ], [ %.pn.pn.pn.pn.pn, %.loopexit268 ]
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.d
  %.pn73.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn73.pn.pn.pn.pn.pn.pn, %bb.fd ], [ %i.bd, %bb.d ]
  call void @_ZN6duckdb11FunctionSetINS_14ScalarFunctionEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #23
  resume { ptr, i32 } %.pn73.pn.pn.pn.pn.pn.pn.pn

._crit_edge364:                                   ; preds = %.lr.ph363, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  ret void

.lr.ph363:                                        ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, %.lr.ph363
  %.sroa.0251.0362 = phi ptr [ %i.lz, %.lr.ph363 ], [ %i.ba, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit ] ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.sroa.0251.0362, i64 234
  store i8 1, ptr %i.ly, align 2, !tbaa !259
  %i.lz = getelementptr inbounds nuw i8, ptr %.sroa.0251.0362, i64 360 ; 2 uses
  %.not265 = icmp eq ptr %i.lz, %i.bc
  br i1 %.not265, label %._crit_edge364, label %.lr.ph363
}

declare void @_ZN6duckdb11LogicalType7NumericEv(ptr dead_on_unwind writable sret(%"class.duckdb::vector.3") align 8) local_unnamed_addr #1

declare void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdbL18DecimalUnaryOpBindINS_11AbsOperatorEEENS_10unique_ptrINS_12FunctionDataESt14default_deleteIS3_ELb1EEERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS2_INS_10ExpressionES4_ISC_ELb1EEELb1ESaISE_EEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0, ptr nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i.i36 = alloca { i64, i64 }, align 8 ; 4 uses
  %4 = alloca %"class.std::function", align 8     ; 10 uses
  %.sroa.0.i.i.i.i29 = alloca { i64, i64 }, align 8 ; 4 uses
  %5 = alloca %"class.std::function", align 8     ; 10 uses
  %.sroa.0.i.i.i.i22 = alloca { i64, i64 }, align 8 ; 4 uses
  %6 = alloca %"class.std::function", align 8     ; 10 uses
  %.sroa.0.i.i.i.i = alloca { i64, i64 }, align 8 ; 4 uses
  %7 = alloca %"class.std::function", align 8     ; 10 uses
  %8 = alloca %"struct.duckdb::LogicalType", align 8 ; 12 uses
  %9 = alloca %"class.std::function", align 8     ; 5 uses
  %10 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %11 = alloca %"class.std::function", align 8    ; 5 uses
  %12 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %13 = alloca %"class.std::function", align 8    ; 5 uses
  %14 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %15 = alloca %"class.std::function", align 8    ; 5 uses
  %16 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %17 = alloca %"struct.duckdb::LogicalType", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 0)
  %i.b = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  call void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 1 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !260
  switch i8 %i.e, label %bb.ai [
    i8 5, label %bb.b
    i8 7, label %bb.m
    i8 9, label %bb.x
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 noundef zeroext 12)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb14ScalarFunction22GetScalarUnaryFunctionINS_11AbsOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEERKNS_11LogicalTypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::function") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.h = load <2 x ptr>, ptr %i.g, align 8, !tbaa !13
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !17
  %.not.i.i.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.not.i.i.i, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.l = load <2 x ptr>, ptr %i.k, align 8, !tbaa !13
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !13   ; 2 uses
  store <2 x ptr> %i.l, ptr %i.j, align 8, !tbaa !13
  store <2 x ptr> %i.h, ptr %i.k, align 8, !tbaa !13
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit.thread, label %bb.f

_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit.thread: ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %_ZNSt14_Function_baseD2Ev.exit

bb.f:                                             ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i
  %i.n = invoke noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #26
  unreachable

_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit: ; preds = %bb.f
  %.pre46 = load ptr, ptr %i.g, align 8, !tbaa !17 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %.not.i = icmp eq ptr %.pre46, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit
  %i.q = invoke noundef zeroext i1 %.pre46(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #26
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit.thread, %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit, %bb.h
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.at

bb.j:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #23
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn16 = phi { ptr, i32 } [ %i.u, %bb.k ], [ %i.t, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.bg

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 noundef zeroext 13)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN6duckdb14ScalarFunction22GetScalarUnaryFunctionINS_11AbsOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEERKNS_11LogicalTypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::function") align 8 %11, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.o unwind label %bb.v

bb.o:                                             ; preds = %bb.n
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.x = load <2 x ptr>, ptr %i.w, align 8, !tbaa !13
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !17
  %.not.i.i.not.i.i.i23 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.not.i.i.i23, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i24, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %11, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i24

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i24: ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i22)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i22, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i22, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i22)
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.ab = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !13
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !13 ; 2 uses
  store <2 x ptr> %i.ab, ptr %i.z, align 8, !tbaa !13
  store <2 x ptr> %i.x, ptr %i.aa, align 8, !tbaa !13
  %.not.i.i.i25 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i25, label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit26.thread, label %bb.q

_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit26.thread: ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %_ZNSt14_Function_baseD2Ev.exit28

bb.q:                                             ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i24
  %i.ad = invoke noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit26 unwind label %bb.r ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #26
  unreachable

_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit26: ; preds = %bb.q
  %.pre45 = load ptr, ptr %i.w, align 8, !tbaa !17 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %.not.i27 = icmp eq ptr %.pre45, null
  br i1 %.not.i27, label %_ZNSt14_Function_baseD2Ev.exit28, label %bb.s

bb.s:                                             ; preds = %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit26
  %i.ag = invoke noundef zeroext i1 %.pre45(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit28 unwind label %bb.t ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #26
  unreachable

_ZNSt14_Function_baseD2Ev.exit28:                 ; preds = %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit26.thread, %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit26, %bb.s
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.at

bb.u:                                             ; preds = %bb.m
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %bb.n
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #23
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn14 = phi { ptr, i32 } [ %i.ak, %bb.v ], [ %i.aj, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.bg

bb.x:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 noundef zeroext 14)
          to label %bb.y unwind label %bb.af

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN6duckdb14ScalarFunction22GetScalarUnaryFunctionINS_11AbsOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEERKNS_11LogicalTypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::function") align 8 %13, ptr noundef nonnull align 8 dereferenceable(24) %14)
          to label %bb.z unwind label %bb.ag

bb.z:                                             ; preds = %bb.y
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 24, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.an = load <2 x ptr>, ptr %i.am, align 8, !tbaa !13
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !17
  %.not.i.i.not.i.i.i30 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.not.i.i.i30, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i31, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i31

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i31: ; preds = %bb.aa, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i29)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i29, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.al, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i29, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i29)
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.ar = load <2 x ptr>, ptr %i.aq, align 8, !tbaa !13
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !13 ; 2 uses
  store <2 x ptr> %i.ar, ptr %i.ap, align 8, !tbaa !13
  store <2 x ptr> %i.an, ptr %i.aq, align 8, !tbaa !13
  %.not.i.i.i32 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i32, label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit33.thread, label %bb.ab

_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit33.thread: ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %_ZNSt14_Function_baseD2Ev.exit35

bb.ab:                                            ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i31
  %i.at = invoke noundef zeroext i1 %i.as(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit33 unwind label %bb.ac ; 0 uses

bb.ac:                                            ; preds = %bb.ab
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #26
  unreachable

_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit33: ; preds = %bb.ab
  %.pre = load ptr, ptr %i.am, align 8, !tbaa !17 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %.not.i34 = icmp eq ptr %.pre, null
  br i1 %.not.i34, label %_ZNSt14_Function_baseD2Ev.exit35, label %bb.ad

bb.ad:                                            ; preds = %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit33
  %i.aw = invoke noundef zeroext i1 %.pre(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %13, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit35 unwind label %bb.ae ; 0 uses

bb.ae:                                            ; preds = %bb.ad
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #26
  unreachable

_ZNSt14_Function_baseD2Ev.exit35:                 ; preds = %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit33.thread, %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit33, %bb.ad
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.at

bb.af:                                            ; preds = %bb.x
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %bb.y
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #23
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.ag ], [ %i.az, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.bg

bb.ai:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 noundef zeroext 50)
          to label %bb.aj unwind label %bb.aq

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN6duckdb14ScalarFunction22GetScalarUnaryFunctionINS_11AbsOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEERKNS_11LogicalTypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::function") align 8 %15, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %bb.ak unwind label %bb.ar

bb.ak:                                            ; preds = %bb.aj
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 24, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.bd = load <2 x ptr>, ptr %i.bc, align 8, !tbaa !13
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !17
  %.not.i.i.not.i.i.i37 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.not.i.i.i37, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i38, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %15, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i38

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i38: ; preds = %bb.al, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i36)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i36, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.bb, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i36, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i36)
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.bh = load <2 x ptr>, ptr %i.bg, align 8, !tbaa !13
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !13 ; 2 uses
  store <2 x ptr> %i.bh, ptr %i.bf, align 8, !tbaa !13
  store <2 x ptr> %i.bd, ptr %i.bg, align 8, !tbaa !13
  %.not.i.i.i39 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i39, label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit40.thread, label %bb.am

_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit40.thread: ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZNSt14_Function_baseD2Ev.exit42

bb.am:                                            ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i38
  %i.bj = invoke noundef zeroext i1 %i.bi(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit40 unwind label %bb.an ; 0 uses

bb.an:                                            ; preds = %bb.am
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #26
  unreachable

_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit40: ; preds = %bb.am
  %.pre47 = load ptr, ptr %i.bc, align 8, !tbaa !17 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %.not.i41 = icmp eq ptr %.pre47, null
  br i1 %.not.i41, label %_ZNSt14_Function_baseD2Ev.exit42, label %bb.ao

bb.ao:                                            ; preds = %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit40
  %i.bm = invoke noundef zeroext i1 %.pre47(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %15, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit42 unwind label %bb.ap ; 0 uses

bb.ap:                                            ; preds = %bb.ao
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  call void @__clang_call_terminate(ptr %i.bo) #26
  unreachable

_ZNSt14_Function_baseD2Ev.exit42:                 ; preds = %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit40.thread, %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit40, %bb.ao
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %bb.at

bb.aq:                                            ; preds = %bb.ai
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ar:                                            ; preds = %bb.aj
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #23
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.pn18 = phi { ptr, i32 } [ %i.bq, %bb.ar ], [ %i.bp, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %bb.bg

bb.at:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit42, %_ZNSt14_Function_baseD2Ev.exit35, %_ZNSt14_Function_baseD2Ev.exit28, %_ZNSt14_Function_baseD2Ev.exit
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.bs = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.br, i64 noundef 0)
          to label %bb.au unwind label %bb.bf     ; 5 uses

bb.au:                                            ; preds = %bb.at
  %i.bt = icmp eq ptr %i.bs, %8
  br i1 %i.bt, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.bu = load i8, ptr %8, align 8, !tbaa !243
  store i8 %i.bu, ptr %i.bs, align 8, !tbaa !243
  %i.bv = load i8, ptr %i.d, align 1, !tbaa !260
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !260
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !26 ; 2 uses
  %i.cb = load <2 x ptr>, ptr %i.by, align 8, !tbaa !13
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 3 uses
  %i.cd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.cd, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ce = load i32, ptr %i.cc, align 4, !tbaa !3
  %i.cf = add nsw i32 %i.ce, 1
  store i32 %i.cf, ptr %i.cc, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i

bb.ay:                                            ; preds = %bb.aw
  %i.cg = atomicrmw volatile add ptr %i.cc, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i: ; preds = %bb.ay, %bb.ax, %bb.av
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !26 ; 8 uses
  store <2 x ptr> %i.cb, ptr %i.bx, align 8, !tbaa !13
  %.not.i.i.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit, label %bb.az

bb.az:                                            ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 4 uses
  %i.ck = load atomic i64, ptr %i.cj acquire, align 8 ; 2 uses
  %i.cl = icmp eq i64 %i.ck, 4294967297
  %i.cm = trunc i64 %i.ck to i32                  ; 2 uses
  br i1 %i.cl, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store i32 0, ptr %i.cj, align 8, !tbaa !32
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  store i32 0, ptr %i.cn, align 4, !tbaa !34
  %i.co = load ptr, ptr %i.ci, align 8, !tbaa !22
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #23, !inline_history !261
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !22
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #23, !inline_history !261
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

bb.bb:                                            ; preds = %bb.az
  %i.cu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i5.i.i = icmp eq i8 %i.cu, 0
  br i1 %.not.i.i.i.i5.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.cv = add nsw i32 %i.cm, -1
  store i32 %i.cv, ptr %i.cj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.bd:                                            ; preds = %bb.bb
  %i.cw = atomicrmw volatile add ptr %i.cj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.bd, %bb.bc
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.cm, %bb.bc ], [ %i.cw, %bb.bd ]
  %i.cx = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.cx, label %bb.be, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit, !prof !36

bb.be:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #23
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

_ZN6duckdb11LogicalTypeaSERKS0_.exit:             ; preds = %bb.au, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i, %bb.ba, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.be
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i unwind label %bb.bf

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i: ; preds = %_ZN6duckdb11LogicalTypeaSERKS0_.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.cz = load i8, ptr %17, align 8, !tbaa !243
  store i8 %i.cz, ptr %i.cy, align 8, !tbaa !243
  %i.da = getelementptr inbounds nuw i8, ptr %17, i64 1
  %i.db = load i8, ptr %i.da, align 1, !tbaa !260
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 209
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !260
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 216 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.df = load <2 x ptr>, ptr %i.de, align 8, !tbaa !13
  %i.dg = load <2 x ptr>, ptr %i.dd, align 8, !tbaa !13
  store <2 x ptr> %i.df, ptr %i.dd, align 8, !tbaa !13
  store <2 x ptr> %i.dg, ptr %i.de, align 8, !tbaa !13
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %17) #23
  store ptr null, ptr %0, align 8, !tbaa !262
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  ret void

bb.bf:                                            ; preds = %_ZN6duckdb11LogicalTypeaSERKS0_.exit, %bb.at
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.as, %bb.ah, %bb.w, %bb.l
  %.pn20 = phi { ptr, i32 } [ %i.dh, %bb.bf ], [ %.pn18, %bb.as ], [ %.pn16, %bb.l ], [ %.pn14, %bb.w ], [ %.pn, %bb.ah ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  resume { ptr, i32 } %.pn20
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14ScalarFunction22GetScalarUnaryFunctionINS_14TryAbsOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEERKNS_11LogicalTypeE(ptr dead_on_unwind noalias writable sret(%"class.std::function") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.a = load i8, ptr %1, align 8, !tbaa !243
  switch i8 %i.a, label %bb.b [
    i8 11, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit
    i8 12, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit11
    i8 13, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit16
    i8 14, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit21
    i8 28, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit26
    i8 29, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit31
    i8 30, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit36
    i8 31, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit41
    i8 50, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit46
    i8 49, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit51
    i8 22, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit56
    i8 23, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit61
  ]

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit: ; preds = %bb.a
  store ptr @_ZN6duckdb14ScalarFunction13UnaryFunctionIaaNS_14TryAbsOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.b, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.c, align 8, !tbaa !13
  br label %bb.g

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit11: ; preds = %bb.a
  store ptr @_ZN6duckdb14ScalarFunction13UnaryFunctionIssNS_14TryAbsOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %0, align 8
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.479.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.d, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.e, align 8, !tbaa !13
  br label %bb.g

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit16: ; preds = %bb.a
  store ptr @_ZN6duckdb14ScalarFunction13UnaryFunctionIiiNS_14TryAbsOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %0, align 8
  %.sroa.481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.481.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.f, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.g, align 8, !tbaa !13
  br label %bb.g

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit21: ; preds = %bb.a
  store ptr @_ZN6duckdb14ScalarFunction13UnaryFunctionIllNS_14TryAbsOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %0, align 8
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.483.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.h, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.i, align 8, !tbaa !13
  br label %bb.g

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit26: ; preds = %bb.a
  store ptr @_ZN6duckdb14ScalarFunction13UnaryFunctionIhhNS_14TryAbsOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %0, align 8
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.485.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.j, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.k, align 8, !tbaa !13
  br label %bb.g

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit31: ; preds = %bb.a
  store ptr @_ZN6duckdb14ScalarFunction13UnaryFunctionIttNS_14TryAbsOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %0, align 8
  %.sroa.487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.487.0..sroa_idx, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.l, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.m, align 8, !tbaa !13
  br label %bb.g

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit36: ; preds = %bb.a
  store ptr @_ZN6duckdb14ScalarFunction13UnaryFunctionIjjNS_14TryAbsOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %0, align 8
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.489.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.n, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.o, align 8, !tbaa !13
  br label %bb.g

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit41: ; preds = %bb.a
  store ptr @_ZN6duckdb14ScalarFunction13UnaryFunctionImmNS_14TryAbsOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %0, align 8
  %.sroa.491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.491.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.p, align 8, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.q, align 8, !tbaa !13
  br label %bb.g

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit46: ; preds = %bb.a
  store ptr @_ZN6duckdb14ScalarFunction13UnaryFunctionINS_9hugeint_tES2_NS_14TryAbsOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %0, align 8
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.493.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.r, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.s, align 8, !tbaa !13
  br label %bb.g

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit51: ; preds = %bb.a
  store ptr @_ZN6duckdb14ScalarFunction13UnaryFunctionINS_10uhugeint_tES2_NS_14TryAbsOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %0, align 8
  %.sroa.495.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.495.0..sroa_idx, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.t, align 8, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.u, align 8, !tbaa !13
  br label %bb.g

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit56: ; preds = %bb.a
  store ptr @_ZN6duckdb14ScalarFunction13UnaryFunctionIffNS_14TryAbsOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %0, align 8
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.497.0..sroa_idx, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.v, align 8, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.w, align 8, !tbaa !13
  br label %bb.g

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit61: ; preds = %bb.a
  store ptr @_ZN6duckdb14ScalarFunction13UnaryFunctionIddNS_14TryAbsOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %0, align 8
  %.sroa.499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.499.0..sroa_idx, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.x, align 8, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.y, align 8, !tbaa !13
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.z = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.z, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ac = load ptr, ptr %2, align 8, !tbaa !238   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.ac) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %.0, label %bb.f, label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %.0, label %bb.f, label %_ZNSt14_Function_baseD2Ev.exit

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn76 = phi { ptr, i32 } [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.z) #23
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.pn75 = phi { ptr, i32 } [ %.pn76, %bb.f ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn75

bb.g:                                             ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit11, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit16, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit21, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit26, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit31, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit36, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit41, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit46, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit51, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit56, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit61
  ret void

bb.h:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdbL17PropagateAbsStatsERNS_13ClientContextERNS_23FunctionStatisticsInputE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.15") align 8 %0, ptr nonnull readnone align 8 captures(none) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i.i = alloca { i64, i64 }, align 8 ; 4 uses
  %3 = alloca %"class.std::function", align 8     ; 10 uses
  %4 = alloca %"class.duckdb::Value", align 8     ; 9 uses
  %5 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %6 = alloca %"class.duckdb::Value", align 8     ; 9 uses
  %7 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %8 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %9 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %10 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %11 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %12 = alloca %"class.duckdb::Value", align 8    ; 6 uses
  %13 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %14 = alloca %"class.duckdb::Value", align 8    ; 6 uses
  %15 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %16 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %17 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %18 = alloca %"class.duckdb::Value", align 8    ; 6 uses
  %19 = alloca %"class.duckdb::Value", align 8    ; 6 uses
  %20 = alloca %"class.std::function", align 8    ; 5 uses
  %21 = alloca %"class.duckdb::BaseStatistics", align 8 ; 10 uses
  %22 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !265, !nonnull !271, !align !272 ; 2 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !273, !nonnull !271, !align !272 ; 6 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb6vectorINS_14BaseStatisticsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 0) ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 noundef zeroext 1)
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull %5)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 noundef zeroext 1)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull %7)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #23
  %i.e = invoke noundef zeroext i1 @_ZN6duckdb12NumericStats9HasMinMaxERKNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128) %i.d)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  br i1 %i.e, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 57
  %i.h = load i8, ptr %i.g, align 1, !tbaa !260
  switch i8 %i.h, label %bb.ah [
    i8 3, label %bb.k
    i8 5, label %bb.q
    i8 7, label %bb.v
    i8 9, label %bb.ab
  ]

bb.g:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #23
  br label %bb.ci

bb.h:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.i:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #23
  br label %bb.ch

bb.j:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.k:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  invoke void @_ZN6duckdb12NumericStats3MinERKNS_14BaseStatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %8, ptr noundef nonnull align 8 dereferenceable(128) %i.d)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.m = invoke noundef signext i8 @_ZNK6duckdb5Value8GetValueIaEET_v(ptr noundef nonnull align 8 dereferenceable(64) %8)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.n = icmp eq i8 %i.m, -128
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br i1 %i.n, label %.critedge, label %bb.at

bb.n:                                             ; preds = %bb.k
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.l
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #23
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn62 = phi { ptr, i32 } [ %i.p, %bb.o ], [ %i.o, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.cg

bb.q:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  invoke void @_ZN6duckdb12NumericStats3MinERKNS_14BaseStatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %9, ptr noundef nonnull align 8 dereferenceable(128) %i.d)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.q = invoke noundef signext i16 @_ZNK6duckdb5Value8GetValueIsEET_v(ptr noundef nonnull align 8 dereferenceable(64) %9)
          to label %bb.ai unwind label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #23
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn60 = phi { ptr, i32 } [ %i.s, %bb.t ], [ %i.r, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.cg

bb.v:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  invoke void @_ZN6duckdb12NumericStats3MinERKNS_14BaseStatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %10, ptr noundef nonnull align 8 dereferenceable(128) %i.d)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.t = invoke noundef i32 @_ZNK6duckdb5Value8GetValueIiEET_v(ptr noundef nonnull align 8 dereferenceable(64) %10)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.u = icmp eq i32 %i.t, -2147483648
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br i1 %i.u, label %.critedge, label %bb.at

bb.y:                                             ; preds = %bb.v
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %bb.w
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %10) #23
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn58 = phi { ptr, i32 } [ %i.w, %bb.z ], [ %i.v, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.cg

bb.ab:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  invoke void @_ZN6duckdb12NumericStats3MinERKNS_14BaseStatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %11, ptr noundef nonnull align 8 dereferenceable(128) %i.d)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.x = invoke noundef i64 @_ZNK6duckdb5Value8GetValueIlEET_v(ptr noundef nonnull align 8 dereferenceable(64) %11)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.y = icmp eq i64 %i.x, -9223372036854775808
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br i1 %i.y, label %.critedge, label %bb.at

bb.ae:                                            ; preds = %bb.ab
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %bb.ac
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %11) #23
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.af ], [ %i.z, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.cg

bb.ah:                                            ; preds = %bb.f
  store ptr null, ptr %0, align 8, !tbaa !274
  br label %bb.cf
end_hunk_0
begin_hunk_1_@_ZN6duckdbL17PropagateAbsStatsERNS_13ClientContextERNS_23FunctionStatisticsInputE:bb.a
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br i1 %i.ab, label %.critedge, label %bb.at

.critedge:                                        ; preds = %bb.x, %bb.ad, %bb.m, %bb.e, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %bb.aj unwind label %bb.an

bb.aj:                                            ; preds = %.critedge
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %12, ptr noundef nonnull %13)
          to label %bb.ak unwind label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  %i.ad = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6duckdb5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %12) #23 ; 0 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %12) #23
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %bb.al unwind label %bb.aq

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %14, ptr noundef nonnull %15)
          to label %bb.am unwind label %bb.ar

bb.am:                                            ; preds = %bb.al
  %i.ae = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6duckdb5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %14) #23 ; 0 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %14) #23
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %_ZNSt14_Function_baseD2Ev.exit

bb.an:                                            ; preds = %.critedge
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ao:                                            ; preds = %bb.aj
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #23
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.pn72 = phi { ptr, i32 } [ %i.ag, %bb.ao ], [ %i.af, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.cg

bb.aq:                                            ; preds = %bb.ak
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ar:                                            ; preds = %bb.al
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %15) #23
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.pn74 = phi { ptr, i32 } [ %i.ai, %bb.ar ], [ %i.ah, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.cg

bb.at:                                            ; preds = %bb.x, %bb.ad, %bb.m, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  invoke void @_ZN6duckdb12NumericStats3MinERKNS_14BaseStatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %16, ptr noundef nonnull align 8 dereferenceable(128) %i.d)
          to label %bb.au unwind label %bb.az

bb.au:                                            ; preds = %bb.at
  %i.aj = invoke noundef i64 @_ZNK6duckdb5Value8GetValueIlEET_v(ptr noundef nonnull align 8 dereferenceable(64) %16)
          to label %bb.av unwind label %bb.ba     ; 4 uses

bb.av:                                            ; preds = %bb.au
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  invoke void @_ZN6duckdb12NumericStats3MaxERKNS_14BaseStatisticsE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %17, ptr noundef nonnull align 8 dereferenceable(128) %i.d)
          to label %bb.aw unwind label %bb.bc

bb.aw:                                            ; preds = %bb.av
  %i.ak = invoke noundef i64 @_ZNK6duckdb5Value8GetValueIlEET_v(ptr noundef nonnull align 8 dereferenceable(64) %17)
          to label %bb.ax unwind label %bb.bd     ; 3 uses

bb.ax:                                            ; preds = %bb.aw
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  %i.al = and i64 %i.ak, %i.aj
  %or.cond.not = icmp sgt i64 %i.al, -1
  br i1 %or.cond.not, label %bb.bg, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.am = call noundef i64 @llvm.abs.i64(i64 %i.ak, i1 true)
  %i.an = call noundef i64 @llvm.abs.i64(i64 %i.aj, i1 true)
  br label %bb.bl

bb.az:                                            ; preds = %bb.at
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ba:                                            ; preds = %bb.au
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %16) #23
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.pn64 = phi { ptr, i32 } [ %i.ap, %bb.ba ], [ %i.ao, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %bb.cg

bb.bc:                                            ; preds = %bb.av
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.bd:                                            ; preds = %bb.aw
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %17) #23
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.pn66 = phi { ptr, i32 } [ %i.ar, %bb.bd ], [ %i.aq, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br label %bb.cg

bb.bf:                                            ; preds = %bb.bn, %bb.bk, %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %bb.bi
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.bg:                                            ; preds = %bb.ax
  %i.at = icmp slt i64 %i.aj, 0
  br i1 %i.at, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.au = sub nsw i64 0, %i.aj
  %i.av = call noundef i64 @llvm.smax.i64(i64 %i.au, i64 %i.ak)
  br label %bb.bl

bb.bi:                                            ; preds = %bb.bg
  %i.aw = load ptr, ptr %2, align 8, !tbaa !273, !nonnull !271, !align !272
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 448
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 noundef 0)
          to label %bb.bj unwind label %bb.bf     ; 2 uses

bb.bj:                                            ; preds = %bb.bi
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !277 ; 2 uses
  %i.bb = load ptr, ptr %i.ay, align 8, !tbaa !278
  store ptr null, ptr %i.ay, align 8, !tbaa !278
  %i.bc = load ptr, ptr %i.ba, align 8, !tbaa !278 ; 3 uses
  store ptr %i.bb, ptr %i.ba, align 8, !tbaa !278
  %.not.i.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.bj
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !22
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(88) %i.bc) #23, !inline_history !280
  br label %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.bj, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i
  %i.bg = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb6vectorINS_14BaseStatisticsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 0)
          to label %bb.bk unwind label %bb.bf

bb.bk:                                            ; preds = %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  invoke void @_ZNK6duckdb14BaseStatistics8ToUniqueEv(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.15") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %i.bg)
          to label %bb.cf unwind label %bb.bf

bb.bl:                                            ; preds = %bb.bh, %bb.ay
  %.035 = phi i64 [ %i.am, %bb.ay ], [ 0, %bb.bh ]
  %.0 = phi i64 [ %i.an, %bb.ay ], [ %i.av, %bb.bh ]
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  invoke void @_ZN6duckdb5Value7NumericERKNS_11LogicalTypeEl(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %18, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %.035)
          to label %bb.bm unwind label %bb.bt

bb.bm:                                            ; preds = %bb.bl
  %i.bh = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6duckdb5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %18) #23 ; 0 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %18) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  invoke void @_ZN6duckdb5Value7NumericERKNS_11LogicalTypeEl(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %19, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %.0)
          to label %bb.bn unwind label %bb.bu

bb.bn:                                            ; preds = %bb.bm
  %i.bi = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6duckdb5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %19) #23 ; 0 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %19) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  invoke void @_ZN6duckdb14ScalarFunction22GetScalarUnaryFunctionINS_11AbsOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEERKNS_11LogicalTypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::function") align 8 %20, ptr noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.critedge82 unwind label %bb.bf

.critedge82:                                      ; preds = %bb.bn
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 328 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 24, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  %i.bl = load <2 x ptr>, ptr %i.bk, align 8, !tbaa !13
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !17
  %.not.i.i.not.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.not.i.i.i, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i, label %bb.bo

bb.bo:                                            ; preds = %.critedge82
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %20, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i: ; preds = %bb.bo, %.critedge82
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 344 ; 3 uses
  %i.bp = load <2 x ptr>, ptr %i.bo, align 8, !tbaa !13
  %i.bq = load ptr, ptr %i.bo, align 8, !tbaa !13 ; 2 uses
  store <2 x ptr> %i.bp, ptr %i.bn, align 8, !tbaa !13
  store <2 x ptr> %i.bl, ptr %i.bo, align 8, !tbaa !13
  %.not.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i, label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit.thread, label %bb.bp

_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit.thread: ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZNSt14_Function_baseD2Ev.exit

bb.bp:                                            ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i
  %i.br = invoke noundef zeroext i1 %i.bq(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit unwind label %bb.bq ; 0 uses

bb.bq:                                            ; preds = %bb.bp
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  %i.bt = extractvalue { ptr, i32 } %i.bs, 0
  call void @__clang_call_terminate(ptr %i.bt) #26
  unreachable

_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit: ; preds = %bb.bp
  %.pre = load ptr, ptr %i.bk, align 8, !tbaa !17 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %.not.i = icmp eq ptr %.pre, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.br

bb.br:                                            ; preds = %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit
  %i.bu = invoke noundef zeroext i1 %.pre(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %20, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.bs ; 0 uses

bb.bs:                                            ; preds = %bb.br
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  call void @__clang_call_terminate(ptr %i.bw) #26
  unreachable

bb.bt:                                            ; preds = %bb.bl
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br label %bb.cg

bb.bu:                                            ; preds = %bb.bm
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  br label %bb.cg

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit.thread, %bb.br, %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit, %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(24) %i.bz)
          to label %bb.bv unwind label %bb.cb

bb.bv:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  invoke void @_ZN6duckdb12NumericStats11CreateEmptyENS_11LogicalTypeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::BaseStatistics") align 8 %21, ptr noundef nonnull %22)
          to label %bb.bw unwind label %bb.cc

bb.bw:                                            ; preds = %bb.bv
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %22) #23
  invoke void @_ZN6duckdb12NumericStats6SetMinERNS_14BaseStatisticsERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(128) %21, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %bb.bx unwind label %bb.cd

bb.bx:                                            ; preds = %bb.bw
  invoke void @_ZN6duckdb12NumericStats6SetMaxERNS_14BaseStatisticsERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(128) %21, ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %bb.by unwind label %bb.cd

bb.by:                                            ; preds = %bb.bx
  invoke void @_ZN6duckdb14BaseStatistics12CopyValidityERKS0_(ptr noundef nonnull align 8 dereferenceable(128) %21, ptr noundef nonnull align 8 dereferenceable(128) %i.d)
          to label %bb.bz unwind label %bb.cd

bb.bz:                                            ; preds = %bb.by
  invoke void @_ZNK6duckdb14BaseStatistics8ToUniqueEv(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.15") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %21)
          to label %bb.ca unwind label %bb.cd

bb.ca:                                            ; preds = %bb.bz
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %21) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br label %bb.cf

bb.cb:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.cc:                                            ; preds = %bb.bv
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %22) #23
  br label %bb.ce

bb.cd:                                            ; preds = %bb.bz, %bb.by, %bb.bx, %bb.bw
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %21) #23
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc, %bb.cb
  %.pn76 = phi { ptr, i32 } [ %i.cc, %bb.cd ], [ %i.cb, %bb.cc ], [ %i.ca, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br label %bb.cg

bb.cf:                                            ; preds = %bb.bk, %bb.ca, %bb.ah
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void

bb.cg:                                            ; preds = %bb.bb, %bb.bf, %bb.bt, %bb.bu, %bb.be, %bb.ce, %bb.as, %bb.ap, %bb.ag, %bb.aa, %bb.u, %bb.p, %bb.j
  %.pn76.pn = phi { ptr, i32 } [ %.pn76, %bb.ce ], [ %.pn74, %bb.as ], [ %.pn72, %bb.ap ], [ %i.l, %bb.j ], [ %.pn62, %bb.p ], [ %.pn60, %bb.u ], [ %.pn58, %bb.aa ], [ %.pn, %bb.ag ], [ %.pn64, %bb.bb ], [ %.pn66, %bb.be ], [ %i.as, %bb.bf ], [ %i.by, %bb.bu ], [ %i.bx, %bb.bt ]
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #23
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.i, %bb.h
  %.pn76.pn.pn = phi { ptr, i32 } [ %.pn76.pn, %bb.cg ], [ %i.k, %bb.i ], [ %i.j, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #23
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.g
  %.pn76.pn.pn.pn = phi { ptr, i32 } [ %.pn76.pn.pn, %bb.ch ], [ %i.i, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %.pn76.pn.pn.pn
}

declare void @_ZN6duckdb14ScalarFunction11NopFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(184), ptr noundef nonnull align 8 dereferenceable(104)) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14ScalarFunction22GetScalarUnaryFunctionINS_11AbsOperatorEEESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEERKNS_11LogicalTypeE(ptr dead_on_unwind noalias writable sret(%"class.std::function") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.a = load i8, ptr %1, align 8, !tbaa !243
  switch i8 %i.a, label %bb.b [
    i8 11, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit
    i8 12, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit11
    i8 13, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit16
    i8 14, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit21
    i8 28, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit26
    i8 29, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit31
    i8 30, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit36
    i8 31, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit41
    i8 50, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit46
    i8 49, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit51
    i8 22, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit56
    i8 23, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit61
  ]

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit: ; preds = %bb.a
  store ptr @_ZN6duckdb14ScalarFunction13UnaryFunctionIaaNS_11AbsOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.b, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.c, align 8, !tbaa !13
  br label %bb.g

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit11: ; preds = %bb.a
  store ptr @_ZN6duckdb14ScalarFunction13UnaryFunctionIssNS_11AbsOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %0, align 8
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.479.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.d, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.e, align 8, !tbaa !13
  br label %bb.g

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit16: ; preds = %bb.a
  store ptr @_ZN6duckdb14ScalarFunction13UnaryFunctionIiiNS_11AbsOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %0, align 8
  %.sroa.481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.481.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.f, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.g, align 8, !tbaa !13
  br label %bb.g

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit21: ; preds = %bb.a
  store ptr @_ZN6duckdb14ScalarFunction13UnaryFunctionIllNS_11AbsOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %0, align 8
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.483.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.h, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.i, align 8, !tbaa !13
  br label %bb.g

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIPS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit26: ; preds = %bb.a
  store ptr @_ZN6duckdb14ScalarFunction13UnaryFunctionIhhNS_11AbsOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %0, align 8
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.485.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.j, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.k, align 8, !tbaa !13
  br label %bb.g

end_hunk_1
begin_hunk_2_@_ZN6duckdb7SignFun12GetFunctionsEv:bb.a
_ZN6duckdb11FunctionSetINS_14ScalarFunctionEE11AddFunctionES1_.exit: ; preds = %_ZN6duckdb14ScalarFunctionC2EOS0_.exit.i.i.i, %bb.w
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb14ScalarFunctionE, i64 16), ptr %4, align 8, !tbaa !22
  %i.az = load ptr, ptr %i.n, align 8, !tbaa !26  ; 8 uses
  %.not.i.i.i.i26 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i26, label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZN6duckdb11FunctionSetINS_14ScalarFunctionEE11AddFunctionES1_.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 4 uses
  %i.bb = load atomic i64, ptr %i.ba acquire, align 8 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 4294967297
  %i.bd = trunc i64 %i.bb to i32                  ; 2 uses
  br i1 %i.bc, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.ba, align 8, !tbaa !32
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i32 0, ptr %i.be, align 4, !tbaa !34
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !22
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #23, !inline_history !35
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !22
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #23, !inline_history !35
  br label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i

bb.z:                                             ; preds = %bb.x
  %i.bl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i.i.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bm = add nsw i32 %i.bd, -1
  store i32 %i.bm, ptr %i.ba, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.bn = atomicrmw volatile add ptr %i.ba, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i.i.i = phi i32 [ %i.bd, %bb.aa ], [ %i.bn, %bb.ab ]
  %i.bo = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bo, label %bb.ac, label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i, !prof !36

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #23, !inline_history !37
  br label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i

_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i: ; preds = %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.y, %_ZN6duckdb11FunctionSetINS_14ScalarFunctionEE11AddFunctionES1_.exit
  %i.bp = load ptr, ptr %i.j, align 8, !tbaa !17  ; 2 uses
  %.not.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i, label %_ZN6duckdb14ScalarFunctionD2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i
  %i.bq = invoke noundef zeroext i1 %i.bp(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i32 noundef 3)
          to label %_ZN6duckdb14ScalarFunctionD2Ev.exit unwind label %bb.ae, !inline_history !37 ; 0 uses

bb.ae:                                            ; preds = %bb.ad
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #26, !inline_history !37
  unreachable

_ZN6duckdb14ScalarFunctionD2Ev.exit:              ; preds = %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i, %bb.ad
  call void @_ZN6duckdb18BaseScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %4) #23, !inline_history !37
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #23
  %i.bt = load ptr, ptr %i.f, align 8, !tbaa !17  ; 2 uses
  %.not.i = icmp eq ptr %i.bt, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZN6duckdb14ScalarFunctionD2Ev.exit
  %i.bu = invoke noundef zeroext i1 %i.bt(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.ag ; 0 uses

bb.ag:                                            ; preds = %bb.af
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  call void @__clang_call_terminate(ptr %i.bw) #26
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN6duckdb14ScalarFunctionD2Ev.exit, %bb.af
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #23
  %i.bx = load ptr, ptr %5, align 8, !tbaa !7     ; 3 uses
  %i.by = load ptr, ptr %i.e, align 8, !tbaa !12  ; 2 uses
  %.not4.i.i.i28 = icmp eq ptr %i.bx, %i.by
  br i1 %.not4.i.i.i28, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i34, label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %_ZNSt14_Function_baseD2Ev.exit, %.lr.ph.i.i.i29
  %.05.i.i.i30 = phi ptr [ %i.bz, %.lr.ph.i.i.i29 ], [ %i.bx, %_ZNSt14_Function_baseD2Ev.exit ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i30) #23
  %i.bz = getelementptr inbounds nuw i8, ptr %.05.i.i.i30, i64 24 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.bz, %i.by
  br i1 %.not.i.i.i31, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i32, label %.lr.ph.i.i.i29, !llvm.loop !38

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i32: ; preds = %.lr.ph.i.i.i29
  %.pr.i33 = load ptr, ptr %5, align 8, !tbaa !7
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i34

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i34: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i32, %_ZNSt14_Function_baseD2Ev.exit
  %i.ca = phi ptr [ %.pr.i33, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i32 ], [ %i.bx, %_ZNSt14_Function_baseD2Ev.exit ] ; 2 uses
  %.not.i.i1.i35 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i1.i35, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit36, label %bb.ah

bb.ah:                                            ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i34
  call void @_ZdlPv(ptr noundef nonnull %i.ca) #27
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit36

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit36: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i34, %bb.ah
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.as

bb.ai:                                            ; preds = %bb.f
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.aj:                                            ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ak:                                            ; preds = %switch.lookup
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.al:                                            ; preds = %bb.s
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.am:                                            ; preds = %bb.w, %bb.u
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb14ScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %4) #23
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.pn = phi { ptr, i32 } [ %i.cf, %bb.am ], [ %i.ce, %bb.al ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #23
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ak
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.an ], [ %i.cd, %bb.ak ] ; 2 uses
  %i.cg = load ptr, ptr %i.f, align 8, !tbaa !17  ; 2 uses
  %.not.i37 = icmp eq ptr %i.cg, null
  br i1 %.not.i37, label %.body22, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ch = invoke noundef zeroext i1 %i.cg(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 3)
          to label %.body22 unwind label %bb.aq   ; 0 uses

bb.aq:                                            ; preds = %bb.ap
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  call void @__clang_call_terminate(ptr %i.cj) #26
  unreachable

.body22:                                          ; preds = %bb.ap, %bb.ao, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %.pn.pn, %bb.ap ], [ %.pn15.i, %bb.q ], [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn.pn, %bb.ao ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #23
  br label %bb.ar

bb.ar:                                            ; preds = %.body22, %bb.aj
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body22 ], [ %i.cc, %bb.aj ]
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #23
  br label %.body

.body:                                            ; preds = %.body42.thread, %bb.k, %.body42, %bb.ar
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.ar ], [ %i.z, %.body42 ], [ %i.z, %bb.k ], [ %i.ac, %.body42.thread ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #23
  br label %.loopexit

.loopexit:                                        ; preds = %.body, %bb.ai
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cb, %bb.ai ], [ %.pn.pn.pn.pn.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.at

bb.as:                                            ; preds = %bb.e, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit36
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.045.0101, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.ck, %i.c
  br i1 %.not, label %._crit_edge, label %bb.e

bb.at:                                            ; preds = %.loopexit, %bb.d
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %.loopexit ], [ %i.r, %bb.d ]
  call void @_ZN6duckdb11FunctionSetINS_14ScalarFunctionEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #23
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb7CeilFun12GetFunctionsEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.duckdb::ScalarFunctionSet") align 8 %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i35 = alloca { i64, i64 }, align 8 ; 4 uses
  %1 = alloca %"class.std::function", align 8     ; 9 uses
  %.sroa.0.i.i.i = alloca { i64, i64 }, align 8   ; 4 uses
  %2 = alloca %"class.std::function", align 8     ; 9 uses
  %3 = alloca %"class.duckdb::vector.3", align 8  ; 9 uses
  %4 = alloca %"class.std::function", align 8     ; 14 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %7 = alloca %"class.duckdb::ScalarFunction", align 8 ; 12 uses
  %8 = alloca %"class.duckdb::vector.3", align 8  ; 9 uses
  %9 = alloca [1 x %"struct.duckdb::LogicalType"], align 8 ; 7 uses
  %10 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %11 = alloca %"class.std::function", align 8    ; 10 uses
  %12 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  tail call void @_ZN6duckdb17ScalarFunctionSetC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZN6duckdb11LogicalType7NumericEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector.3") align 8 %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %3, align 8, !tbaa !241    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !241  ; 2 uses
  %.not97 = icmp eq ptr %i.a, %i.c
  br i1 %.not97, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 264
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 256 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 240 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 272
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 344 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 352 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.e

._crit_edge:                                      ; preds = %_ZNSt14_Function_baseD2Ev.exit56
  %.pre = load ptr, ptr %3, align 8, !tbaa !7     ; 3 uses
  %.pre108 = load ptr, ptr %i.b, align 8, !tbaa !12 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre108
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i ], [ %.pre, %._crit_edge ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i) #23
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, %.pre108
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !38

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !7
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %bb.b, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %._crit_edge
  %i.v = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %.pre, %._crit_edge ], [ %i.a, %bb.b ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.v) #27
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

bb.d:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.e:                                             ; preds = %.lr.ph, %_ZNSt14_Function_baseD2Ev.exit56
  %.sroa.067.098 = phi ptr [ %i.a, %.lr.ph ], [ %i.db, %_ZNSt14_Function_baseD2Ev.exit56 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.x = invoke noundef zeroext i1 @_ZNK6duckdb11LogicalType10IsIntegralEv(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.067.098)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %i.x, label %bb.av, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.h:                                             ; preds = %bb.f
  %i.z = load i8, ptr %.sroa.067.098, align 8, !tbaa !243
  switch i8 %i.z, label %bb.o [
    i8 22, label %bb.i
    i8 23, label %bb.l
    i8 21, label %bb.t
  ]

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store i64 0, ptr %i.h, align 8
  store ptr @_ZN6duckdb14ScalarFunction13UnaryFunctionIffNS_12_GLOBAL__N_112CeilOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %2, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.aa = load <2 x ptr>, ptr %i.f, align 8, !tbaa !13
  %i.ab = load ptr, ptr %i.f, align 8, !tbaa !13  ; 2 uses
  store <2 x ptr> %i.aa, ptr %i.g, align 8, !tbaa !13
  store <2 x ptr> <ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_>, ptr %i.f, align 8, !tbaa !13
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIRS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = invoke noundef zeroext i1 %i.ab(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIRS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #26
  unreachable

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIRS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.t

bb.l:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  store i64 0, ptr %i.e, align 8
  store ptr @_ZN6duckdb14ScalarFunction13UnaryFunctionIddNS_12_GLOBAL__N_112CeilOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %1, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i35)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i35, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i35, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i35)
  %i.af = load <2 x ptr>, ptr %i.f, align 8, !tbaa !13
  %i.ag = load ptr, ptr %i.f, align 8, !tbaa !13  ; 2 uses
  store <2 x ptr> %i.af, ptr %i.d, align 8, !tbaa !13
  store <2 x ptr> <ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_>, ptr %i.f, align 8, !tbaa !13
  %.not.i.i36 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i36, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIRS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit37, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = invoke noundef zeroext i1 %i.ag(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIRS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit37 unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #26
  unreachable

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIRS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit37: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.t

bb.o:                                             ; preds = %bb.h
  %i.ak = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.p unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @__cxa_throw(ptr nonnull %i.ak, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.bm unwind label %bb.r

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.o
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  %.021 = phi i1 [ false, %bb.q ], [ true, %bb.p ] ; 2 uses
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.an = load ptr, ptr %5, align 8, !tbaa !238   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.r
  call void @_ZdlPv(ptr noundef %i.an) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %.021, label %bb.s, label %bb.bi

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %.021, label %bb.s, label %bb.bi

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn3172 = phi { ptr, i32 } [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.ak) #23
  br label %bb.bi

bb.t:                                             ; preds = %bb.h, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIRS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit37, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIRS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit
  %.023 = phi ptr [ null, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIRS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit ], [ null, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIRS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit37 ], [ @_ZN6duckdbL31BindGenericRoundFunctionDecimalINS_12_GLOBAL__N_119CeilDecimalOperatorEEENS_10unique_ptrINS_12FunctionDataESt14default_deleteIS4_ELb1EEERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS3_INS_10ExpressionES5_ISD_ELb1EEELb1ESaISF_EEE, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.067.098)
          to label %bb.u unwind label %bb.ay

bb.u:                                             ; preds = %bb.t
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.aq = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24
          to label %.noexc63 unwind label %.body64.thread ; 3 uses

.noexc63:                                         ; preds = %bb.u
  store ptr %i.aq, ptr %8, align 8, !tbaa !7
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24 ; 2 uses
  store ptr %i.ar, ptr %i.i, align 8, !tbaa !11
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i

_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.noexc63
  store ptr %i.ar, ptr %i.j, align 8, !tbaa !12
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.067.098)
          to label %bb.z unwind label %bb.az

_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i: ; preds = %.noexc63
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  %i.au = call ptr @__cxa_begin_catch(ptr %i.at) #23 ; 0 uses
  invoke void @__cxa_rethrow() #25
          to label %bb.x unwind label %bb.v

bb.v:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @__cxa_end_catch()
          to label %.body64 unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  call void @__clang_call_terminate(ptr %i.ax) #26
  unreachable

bb.x:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i
  unreachable

.body64.thread:                                   ; preds = %bb.u
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body64:                                          ; preds = %bb.v
  %.pr = load ptr, ptr %8, align 8, !tbaa !7      ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i, label %.body, label %bb.y

bb.y:                                             ; preds = %.body64
  call void @_ZdlPv(ptr noundef nonnull %.pr) #27
  br label %.body

bb.z:                                             ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  %i.az = load ptr, ptr %i.f, align 8, !tbaa !17  ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2ERKS8_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ba = invoke noundef zeroext i1 %i.az(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 2)
          to label %bb.ab unwind label %bb.ac     ; 0 uses

bb.ab:                                            ; preds = %bb.aa
  %i.bb = load <2 x ptr>, ptr %i.f, align 8, !tbaa !13
  store <2 x ptr> %i.bb, ptr %i.k, align 8, !tbaa !13
  br label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2ERKS8_.exit

bb.ac:                                            ; preds = %bb.aa
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bd = load ptr, ptr %i.k, align 8, !tbaa !17  ; 2 uses
  %.not.i.i38 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i38, label %.body39, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.be = invoke noundef zeroext i1 %i.bd(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body39 unwind label %bb.ae   ; 0 uses

bb.ae:                                            ; preds = %bb.ad
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #26
  unreachable

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2ERKS8_.exit: ; preds = %bb.ab, %bb.z
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 noundef zeroext 0)
          to label %bb.af unwind label %bb.ba

bb.af:                                            ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2ERKS8_.exit
  invoke void @_ZN6duckdb14ScalarFunctionC1ENS_6vectorINS_11LogicalTypeELb1ESaIS2_EEES2_St8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEEPFNS_10unique_ptrINS_12FunctionDataESt14default_deleteISF_ELb1EEERNS_13ClientContextERS0_RNS1_INSE_INS_10ExpressionESG_ISM_ELb1EEELb1ESaISO_EEEEPFSI_RNS_23ScalarFunctionBindInputESL_SR_EPFNSE_INS_14BaseStatisticsESG_ISY_ELb1EEESK_RNS_23FunctionStatisticsInputEEPFNSE_INS_18FunctionLocalStateESG_IS15_ELb1EEES9_RKNS_23BoundFunctionExpressionEPSF_ES2_NS_17FunctionStabilityENS_20FunctionNullHandlingEPFS2_SK_RKS4_mE(ptr noundef nonnull align 8 dereferenceable(360) %7, ptr noundef nonnull %8, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef %.023, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %12, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef null)
          to label %bb.ag unwind label %bb.bb

bb.ag:                                            ; preds = %bb.af
  %i.bh = load ptr, ptr %i.l, align 8, !tbaa !18  ; 10 uses
  %i.bi = load ptr, ptr %i.m, align 8, !tbaa !21
  %.not.i.i.i41 = icmp eq ptr %i.bh, %i.bi
  br i1 %.not.i.i.i41, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN6duckdb18BaseScalarFunctionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(360) %i.bh, ptr noundef nonnull align 8 dereferenceable(360) %7)
          to label %.noexc unwind label %bb.bc

.noexc:                                           ; preds = %bb.ah
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb14ScalarFunctionE, i64 16), ptr %i.bh, align 8, !tbaa !22
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 240 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i8 0, i64 24, i1 false)
  %i.bl = load ptr, ptr %i.n, align 8, !tbaa !14
  store ptr %i.bl, ptr %i.bk, align 8, !tbaa !14
  %i.bm = load ptr, ptr %i.o, align 8, !tbaa !17
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZN6duckdb14ScalarFunctionC2EOS0_.exit.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %.noexc
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 16, i1 false), !tbaa.struct !24
  %i.bo = load ptr, ptr %i.o, align 8, !tbaa !17
  store ptr %i.bo, ptr %i.bn, align 8, !tbaa !17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  br label %_ZN6duckdb14ScalarFunctionC2EOS0_.exit.i.i.i

_ZN6duckdb14ScalarFunctionC2EOS0_.exit.i.i.i:     ; preds = %bb.ai, %.noexc
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bp, ptr noundef nonnull align 8 dereferenceable(72) %i.q, i64 72, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bh, i64 344
  %i.br = getelementptr inbounds nuw i8, ptr %i.bh, i64 352
  store ptr null, ptr %i.br, align 8, !tbaa !26
  %i.bs = load <2 x ptr>, ptr %i.r, align 8, !tbaa !13
  store ptr null, ptr %i.s, align 8, !tbaa !26
  store <2 x ptr> %i.bs, ptr %i.bq, align 8, !tbaa !13
  store ptr null, ptr %i.r, align 8, !tbaa !29
  %i.bt = load ptr, ptr %i.l, align 8, !tbaa !18
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 360
  store ptr %i.bu, ptr %i.l, align 8, !tbaa !18
  br label %_ZN6duckdb11FunctionSetINS_14ScalarFunctionEE11AddFunctionES1_.exit

bb.aj:                                            ; preds = %bb.ag
  invoke void @_ZNSt6vectorIN6duckdb14ScalarFunctionESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr %i.bh, ptr noundef nonnull align 8 dereferenceable(360) %7)
          to label %_ZN6duckdb11FunctionSetINS_14ScalarFunctionEE11AddFunctionES1_.exit unwind label %bb.bc

_ZN6duckdb11FunctionSetINS_14ScalarFunctionEE11AddFunctionES1_.exit: ; preds = %_ZN6duckdb14ScalarFunctionC2EOS0_.exit.i.i.i, %bb.aj
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb14ScalarFunctionE, i64 16), ptr %7, align 8, !tbaa !22
  %i.bv = load ptr, ptr %i.s, align 8, !tbaa !26  ; 8 uses
  %.not.i.i.i.i43 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i43, label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i, label %bb.ak

bb.ak:                                            ; preds = %_ZN6duckdb11FunctionSetINS_14ScalarFunctionEE11AddFunctionES1_.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 4 uses
  %i.bx = load atomic i64, ptr %i.bw acquire, align 8 ; 2 uses
  %i.by = icmp eq i64 %i.bx, 4294967297
  %i.bz = trunc i64 %i.bx to i32                  ; 2 uses
  br i1 %i.by, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 0, ptr %i.bw, align 8, !tbaa !32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  store i32 0, ptr %i.ca, align 4, !tbaa !34
  %i.cb = load ptr, ptr %i.bv, align 8, !tbaa !22
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #23, !inline_history !35
  %i.ce = load ptr, ptr %i.bv, align 8, !tbaa !22
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #23, !inline_history !35
  br label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i

bb.am:                                            ; preds = %bb.ak
  %i.ch = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i.i = icmp eq i8 %i.ch, 0
  br i1 %.not.i.i.i.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ci = add nsw i32 %i.bz, -1
  store i32 %i.ci, ptr %i.bw, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ao:                                            ; preds = %bb.am
  %i.cj = atomicrmw volatile add ptr %i.bw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ao, %bb.an
  %.0.i.i.i.i.i.i = phi i32 [ %i.bz, %bb.an ], [ %i.cj, %bb.ao ]
  %i.ck = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ck, label %bb.ap, label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i, !prof !36

bb.ap:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #23, !inline_history !37
  br label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i

_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i: ; preds = %bb.ap, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.al, %_ZN6duckdb11FunctionSetINS_14ScalarFunctionEE11AddFunctionES1_.exit
  %i.cl = load ptr, ptr %i.o, align 8, !tbaa !17  ; 2 uses
  %.not.i.i44 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i44, label %_ZN6duckdb14ScalarFunctionD2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i
  %i.cm = invoke noundef zeroext i1 %i.cl(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i32 noundef 3)
          to label %_ZN6duckdb14ScalarFunctionD2Ev.exit unwind label %bb.ar, !inline_history !37 ; 0 uses

bb.ar:                                            ; preds = %bb.aq
  %i.cn = landingpad { ptr, i32 }
          catch ptr null
  %i.co = extractvalue { ptr, i32 } %i.cn, 0
  call void @__clang_call_terminate(ptr %i.co) #26, !inline_history !37
  unreachable

_ZN6duckdb14ScalarFunctionD2Ev.exit:              ; preds = %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i, %bb.aq
  call void @_ZN6duckdb18BaseScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %7) #23, !inline_history !37
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #23
  %i.cp = load ptr, ptr %i.k, align 8, !tbaa !17  ; 2 uses
  %.not.i = icmp eq ptr %i.cp, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.as

bb.as:                                            ; preds = %_ZN6duckdb14ScalarFunctionD2Ev.exit
  %i.cq = invoke noundef zeroext i1 %i.cp(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.at ; 0 uses

bb.at:                                            ; preds = %bb.as
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
  call void @__clang_call_terminate(ptr %i.cs) #26
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN6duckdb14ScalarFunctionD2Ev.exit, %bb.as
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #23
  %i.ct = load ptr, ptr %8, align 8, !tbaa !7     ; 3 uses
  %i.cu = load ptr, ptr %i.j, align 8, !tbaa !12  ; 2 uses
  %.not4.i.i.i46 = icmp eq ptr %i.ct, %i.cu
  br i1 %.not4.i.i.i46, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i52, label %.lr.ph.i.i.i47

.lr.ph.i.i.i47:                                   ; preds = %_ZNSt14_Function_baseD2Ev.exit, %.lr.ph.i.i.i47
  %.05.i.i.i48 = phi ptr [ %i.cv, %.lr.ph.i.i.i47 ], [ %i.ct, %_ZNSt14_Function_baseD2Ev.exit ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i48) #23
  %i.cv = getelementptr inbounds nuw i8, ptr %.05.i.i.i48, i64 24 ; 2 uses
  %.not.i.i.i49 = icmp eq ptr %i.cv, %i.cu
  br i1 %.not.i.i.i49, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i50, label %.lr.ph.i.i.i47, !llvm.loop !38

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i50: ; preds = %.lr.ph.i.i.i47
  %.pr.i51 = load ptr, ptr %8, align 8, !tbaa !7
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i52

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i52: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i50, %_ZNSt14_Function_baseD2Ev.exit
  %i.cw = phi ptr [ %.pr.i51, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i50 ], [ %i.ct, %_ZNSt14_Function_baseD2Ev.exit ] ; 2 uses
  %.not.i.i1.i53 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i1.i53, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit54, label %bb.au

bb.au:                                            ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i52
  call void @_ZdlPv(ptr noundef nonnull %i.cw) #27
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit54

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit54: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i52, %bb.au
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.av

bb.av:                                            ; preds = %bb.f, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit54
  %i.cx = load ptr, ptr %i.f, align 8, !tbaa !17  ; 2 uses
  %.not.i55 = icmp eq ptr %i.cx, null
  br i1 %.not.i55, label %_ZNSt14_Function_baseD2Ev.exit56, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.cy = invoke noundef zeroext i1 %i.cx(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit56 unwind label %bb.ax ; 0 uses

bb.ax:                                            ; preds = %bb.aw
  %i.cz = landingpad { ptr, i32 }
          catch ptr null
  %i.da = extractvalue { ptr, i32 } %i.cz, 0
  call void @__clang_call_terminate(ptr %i.da) #26
  unreachable

_ZNSt14_Function_baseD2Ev.exit56:                 ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.067.098, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.db, %i.c
  br i1 %.not, label %._crit_edge, label %bb.e

bb.ay:                                            ; preds = %bb.t
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.az:                                            ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.ba:                                            ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2ERKS8_.exit
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.bb:                                            ; preds = %bb.af
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bc:                                            ; preds = %bb.aj, %bb.ah
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb14ScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %7) #23
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.pn = phi { ptr, i32 } [ %i.dg, %bb.bc ], [ %i.df, %bb.bb ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #23
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.ba
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.bd ], [ %i.de, %bb.ba ] ; 2 uses
  %i.dh = load ptr, ptr %i.k, align 8, !tbaa !17  ; 2 uses
  %.not.i57 = icmp eq ptr %i.dh, null
  br i1 %.not.i57, label %.body39, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.di = invoke noundef zeroext i1 %i.dh(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body39 unwind label %bb.bg   ; 0 uses

bb.bg:                                            ; preds = %bb.bf
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
  %i.dk = extractvalue { ptr, i32 } %i.dj, 0
  call void @__clang_call_terminate(ptr %i.dk) #26
  unreachable

.body39:                                          ; preds = %bb.bf, %bb.be, %bb.ad, %bb.ac
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bc, %bb.ac ], [ %.pn.pn, %bb.bf ], [ %i.bc, %bb.ad ], [ %.pn.pn, %bb.be ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #23
  br label %bb.bh

bb.bh:                                            ; preds = %.body39, %bb.az
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body39 ], [ %i.dd, %bb.az ]
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #23
  br label %.body

.body:                                            ; preds = %.body64.thread, %bb.y, %.body64, %bb.bh
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.bh ], [ %i.av, %.body64 ], [ %i.av, %bb.y ], [ %i.ay, %.body64.thread ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #23
  br label %.loopexit

.loopexit:                                        ; preds = %.body, %bb.ay
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dc, %bb.ay ], [ %.pn.pn.pn.pn.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.bi

bb.bi:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.s, %.loopexit, %bb.g
  %.pn31.pn = phi { ptr, i32 } [ %.pn3172, %bb.s ], [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn.pn.pn.pn.pn.pn, %.loopexit ], [ %i.y, %bb.g ], [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.dl = load ptr, ptr %i.f, align 8, !tbaa !17  ; 2 uses
  %.not.i59 = icmp eq ptr %i.dl, null
  br i1 %.not.i59, label %_ZNSt14_Function_baseD2Ev.exit60, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.dm = invoke noundef zeroext i1 %i.dl(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit60 unwind label %bb.bk ; 0 uses

bb.bk:                                            ; preds = %bb.bj
  %i.dn = landingpad { ptr, i32 }
          catch ptr null
  %i.do = extractvalue { ptr, i32 } %i.dn, 0
  call void @__clang_call_terminate(ptr %i.do) #26
  unreachable

_ZNSt14_Function_baseD2Ev.exit60:                 ; preds = %bb.bi, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.bl

bb.bl:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit60, %bb.d
  %.pn31.pn.pn = phi { ptr, i32 } [ %.pn31.pn, %_ZNSt14_Function_baseD2Ev.exit60 ], [ %i.w, %bb.d ]
  call void @_ZN6duckdb11FunctionSetINS_14ScalarFunctionEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #23
  resume { ptr, i32 } %.pn31.pn.pn

bb.bm:                                            ; preds = %bb.q
  unreachable
}

declare noundef zeroext i1 @_ZNK6duckdb11LogicalType10IsIntegralEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb14ScalarFunction13UnaryFunctionIffNS_12_GLOBAL__N_112CeilOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0) ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !40   ; 19 uses
  %i.d = load i8, ptr %i.a, align 8, !tbaa !55
  switch i8 %i.d, label %bb.u [
    i8 2, label %bb.b
    i8 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIfEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !77
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIfEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !77
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !78   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !tbaa !79
  %i.l = trunc i64 %i.k to i1
  br i1 %i.l, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
  br label %_ZN6duckdb13UnaryExecutor7ExecuteIffNS_12_GLOBAL__N_112CeilOperatorEEEvRNS_6VectorES5_m.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i, %bb.b
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext false)
  %i.m = load float, ptr %i.h, align 4, !tbaa !164
  %i.n = tail call noundef float @llvm.ceil.f32(float %i.m)
  store float %i.n, ptr %i.f, align 4, !tbaa !164
  br label %_ZN6duckdb13UnaryExecutor7ExecuteIffNS_12_GLOBAL__N_112CeilOperatorEEEvRNS_6VectorES5_m.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIfEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !77   ; 7 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIfEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !77   ; 7 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !448)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !451)
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !78, !noalias !453 ; 2 uses
  %.not.i.i59.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i59.i.i, label %.preheader.i.i.i, label %bb.e

.preheader.i.i.i:                                 ; preds = %bb.d
  %.not19.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not19.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIffNS_12_GLOBAL__N_112CeilOperatorEEEvRNS_6VectorES5_m.exit, label %.lr.ph17.i.i.i.preheader

.lr.ph17.i.i.i.preheader:                         ; preds = %.preheader.i.i.i
  %min.iters.check44 = icmp ult i64 %i.c, 4
  br i1 %min.iters.check44, label %.lr.ph17.i.i.i.preheader71, label %vector.ph45

vector.ph45:                                      ; preds = %.lr.ph17.i.i.i.preheader
  %n.vec47 = and i64 %i.c, -4                     ; 3 uses
  br label %vector.body48

vector.body48:                                    ; preds = %vector.body48, %vector.ph45
  %index49 = phi i64 [ 0, %vector.ph45 ], [ %index.next51, %vector.body48 ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %index49
  %wide.load50 = load <4 x float>, ptr %i.u, align 4, !tbaa !164, !alias.scope !448, !noalias !451
  %i.v = tail call <4 x float> @llvm.ceil.v4f32(<4 x float> %wide.load50)
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index49
  store <4 x float> %i.v, ptr %i.w, align 4, !tbaa !164, !alias.scope !451, !noalias !448
  %index.next51 = add nuw i64 %index49, 4         ; 2 uses
  %i.x = icmp eq i64 %index.next51, %n.vec47
  br i1 %i.x, label %middle.block52, label %vector.body48, !llvm.loop !454

middle.block52:                                   ; preds = %vector.body48
  %cmp.n53 = icmp eq i64 %i.c, %n.vec47
  br i1 %cmp.n53, label %_ZN6duckdb13UnaryExecutor7ExecuteIffNS_12_GLOBAL__N_112CeilOperatorEEEvRNS_6VectorES5_m.exit, label %.lr.ph17.i.i.i.preheader71

.lr.ph17.i.i.i.preheader71:                       ; preds = %.lr.ph17.i.i.i.preheader, %middle.block52
  %.016.i.i.i.ph = phi i64 [ 0, %.lr.ph17.i.i.i.preheader ], [ %n.vec47, %middle.block52 ]
  br label %.lr.ph17.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.t, ptr %i.y, align 8, !tbaa !78, !noalias !453
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aa = icmp eq ptr %2, %i.a
  br i1 %i.aa, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !26, !noalias !453 ; 2 uses
  %i.ae = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !13, !noalias !453
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25, !noalias !453
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !3, !noalias !453
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.af, align 4, !tbaa !3, !noalias !453
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.aj = atomicrmw volatile add ptr %i.af, i32 1 acq_rel, align 4, !noalias !453 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h, %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !26, !noalias !453 ; 8 uses
  store <2 x ptr> %i.ae, ptr %i.z, align 8, !tbaa !13, !noalias !453
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 4 uses
  %i.an = load atomic i64, ptr %i.am acquire, align 8, !noalias !453 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 4294967297
  %i.ap = trunc i64 %i.an to i32                  ; 2 uses
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.am, align 8, !tbaa !32, !noalias !453
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i32 0, ptr %i.aq, align 4, !tbaa !34, !noalias !453
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !22, !noalias !453
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !noalias !453
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #23, !noalias !453, !inline_history !457
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !22, !noalias !453
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !453
  tail call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #23, !noalias !453, !inline_history !457
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ax = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25, !noalias !453
  %.not.i.i.i.i5.i.i.i.i.i = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i.i.i5.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = add nsw i32 %i.ap, -1
  store i32 %i.ay, ptr %i.am, align 8, !tbaa !3, !noalias !453
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.az = atomicrmw volatile add ptr %i.am, i32 -1 acq_rel, align 4, !noalias !453
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ap, %bb.m ], [ %i.az, %bb.n ]
  %i.ba = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ba, label %bb.o, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, !prof !36

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
end_hunk_2
begin_hunk_3_@_ZN6duckdbL31BindGenericRoundFunctionDecimalINS_12_GLOBAL__N_119CeilDecimalOperatorEEENS_10unique_ptrINS_12FunctionDataESt14default_deleteIS4_ELb1EEERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS3_INS_10ExpressionES5_ISD_ELb1EEELb1ESaISF_EEE:bb.a
  br i1 %.not.i.i.i23, label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit24, label %bb.g

bb.g:                                             ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i22
  %i.ad = invoke noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit24 unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #26
  unreachable

_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit24: ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i22, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i29: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 16, i1 false), !tbaa.struct !24
  store ptr @_ZN6duckdbL27GenericRoundFunctionDecimalIlNS_13NumericHelperENS_12_GLOBAL__N_119CeilDecimalOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %i.r, align 8
  %.sroa.260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 248
  store i64 0, ptr %.sroa.260.0..sroa_idx, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ah = load <2 x ptr>, ptr %i.s, align 8, !tbaa !13
  %i.ai = load ptr, ptr %i.s, align 8, !tbaa !13  ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.s, align 8, !tbaa !13
  store <2 x ptr> %i.ah, ptr %i.ag, align 8, !tbaa !13
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.t, align 8, !tbaa !13
  %.not.i.i.i30 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i30, label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit31, label %bb.i

bb.i:                                             ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i29
  %i.aj = invoke noundef zeroext i1 %i.ai(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit31 unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #26
  unreachable

_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit31: ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i29, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i36: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 16, i1 false), !tbaa.struct !24
  store ptr @_ZN6duckdbL27GenericRoundFunctionDecimalINS_9hugeint_tENS_7HugeintENS_12_GLOBAL__N_119CeilDecimalOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %i.r, align 8
  %.sroa.262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 248
  store i64 0, ptr %.sroa.262.0..sroa_idx, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.an = load <2 x ptr>, ptr %i.s, align 8, !tbaa !13
  %i.ao = load ptr, ptr %i.s, align 8, !tbaa !13  ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.s, align 8, !tbaa !13
  store <2 x ptr> %i.an, ptr %i.am, align 8, !tbaa !13
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.t, align 8, !tbaa !13
  %.not.i.i.i37 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i37, label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit38, label %bb.k

bb.k:                                             ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i36
  %i.ap = invoke noundef zeroext i1 %i.ao(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit38 unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #26
  unreachable

_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit38: ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i36, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit38, %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit31, %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit24, %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit17, %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.at = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 noundef 0) ; 5 uses
  %i.au = icmp eq ptr %i.at, %i.c
  br i1 %i.au, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.av = load i8, ptr %i.c, align 8, !tbaa !243
  store i8 %i.av, ptr %i.at, align 8, !tbaa !243
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 57
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !260
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !260
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !26 ; 2 uses
  %i.bd = load <2 x ptr>, ptr %i.ba, align 8, !tbaa !13
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 3 uses
  %i.bf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.bf, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !3
  %i.bh = add nsw i32 %i.bg, 1
  store i32 %i.bh, ptr %i.be, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i

bb.p:                                             ; preds = %bb.n
  %i.bi = atomicrmw volatile add ptr %i.be, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i: ; preds = %bb.p, %bb.o, %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !26 ; 8 uses
  store <2 x ptr> %i.bd, ptr %i.az, align 8, !tbaa !13
  %.not.i.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit, label %bb.q

bb.q:                                             ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 4 uses
  %i.bm = load atomic i64, ptr %i.bl acquire, align 8 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 4294967297
  %i.bo = trunc i64 %i.bm to i32                  ; 2 uses
  br i1 %i.bn, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bl, align 8, !tbaa !32
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  store i32 0, ptr %i.bp, align 4, !tbaa !34
  %i.bq = load ptr, ptr %i.bk, align 8, !tbaa !22
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #23, !inline_history !261
  %i.bt = load ptr, ptr %i.bk, align 8, !tbaa !22
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #23, !inline_history !261
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

bb.s:                                             ; preds = %bb.q
  %i.bw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i5.i.i = icmp eq i8 %i.bw, 0
  br i1 %.not.i.i.i.i5.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bx = add nsw i32 %i.bo, -1
  store i32 %i.bx, ptr %i.bl, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.by = atomicrmw volatile add ptr %i.bl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bo, %bb.t ], [ %i.by, %bb.u ]
  %i.bz = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bz, label %bb.v, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit, !prof !36

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #23
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

_ZN6duckdb11LogicalTypeaSERKS0_.exit:             ; preds = %_ZNSt14_Function_baseD2Ev.exit, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.v
  call void @_ZN6duckdb11LogicalType7DECIMALEhh(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %9, i8 noundef zeroext %i.e, i8 noundef zeroext 0)
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.cb = load i8, ptr %9, align 8, !tbaa !243
  store i8 %i.cb, ptr %i.ca, align 8, !tbaa !243
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 1
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !260
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 209
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !260
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 216 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ch = load <2 x ptr>, ptr %i.cg, align 8, !tbaa !13
  %i.ci = load <2 x ptr>, ptr %i.cf, align 8, !tbaa !13
  store <2 x ptr> %i.ch, ptr %i.cf, align 8, !tbaa !13
  store <2 x ptr> %i.ci, ptr %i.cg, align 8, !tbaa !13
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #23
  store ptr null, ptr %0, align 8, !tbaa !262
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0 align 2

declare void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #6

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb8FloorFun12GetFunctionsEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.duckdb::ScalarFunctionSet") align 8 %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i35 = alloca { i64, i64 }, align 8 ; 4 uses
  %1 = alloca %"class.std::function", align 8     ; 9 uses
  %.sroa.0.i.i.i = alloca { i64, i64 }, align 8   ; 4 uses
  %2 = alloca %"class.std::function", align 8     ; 9 uses
  %3 = alloca %"class.duckdb::vector.3", align 8  ; 9 uses
  %4 = alloca %"class.std::function", align 8     ; 14 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %7 = alloca %"class.duckdb::ScalarFunction", align 8 ; 12 uses
  %8 = alloca %"class.duckdb::vector.3", align 8  ; 9 uses
  %9 = alloca [1 x %"struct.duckdb::LogicalType"], align 8 ; 7 uses
  %10 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %11 = alloca %"class.std::function", align 8    ; 10 uses
  %12 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  tail call void @_ZN6duckdb17ScalarFunctionSetC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZN6duckdb11LogicalType7NumericEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector.3") align 8 %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %3, align 8, !tbaa !241    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !241  ; 2 uses
  %.not97 = icmp eq ptr %i.a, %i.c
  br i1 %.not97, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 264
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 256 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 240 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 272
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 344 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 352 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.e

._crit_edge:                                      ; preds = %_ZNSt14_Function_baseD2Ev.exit56
  %.pre = load ptr, ptr %3, align 8, !tbaa !7     ; 3 uses
  %.pre108 = load ptr, ptr %i.b, align 8, !tbaa !12 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre108
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i ], [ %.pre, %._crit_edge ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i) #23
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, %.pre108
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !38

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !7
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %bb.b, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %._crit_edge
  %i.v = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %.pre, %._crit_edge ], [ %i.a, %bb.b ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.v) #27
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

bb.d:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.e:                                             ; preds = %.lr.ph, %_ZNSt14_Function_baseD2Ev.exit56
  %.sroa.067.098 = phi ptr [ %i.a, %.lr.ph ], [ %i.db, %_ZNSt14_Function_baseD2Ev.exit56 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.x = invoke noundef zeroext i1 @_ZNK6duckdb11LogicalType10IsIntegralEv(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.067.098)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %i.x, label %bb.av, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.h:                                             ; preds = %bb.f
  %i.z = load i8, ptr %.sroa.067.098, align 8, !tbaa !243
  switch i8 %i.z, label %bb.o [
    i8 22, label %bb.i
    i8 23, label %bb.l
    i8 21, label %bb.t
  ]

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store i64 0, ptr %i.h, align 8
  store ptr @_ZN6duckdb14ScalarFunction13UnaryFunctionIffNS_12_GLOBAL__N_113FloorOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %2, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.aa = load <2 x ptr>, ptr %i.f, align 8, !tbaa !13
  %i.ab = load ptr, ptr %i.f, align 8, !tbaa !13  ; 2 uses
  store <2 x ptr> %i.aa, ptr %i.g, align 8, !tbaa !13
  store <2 x ptr> <ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_>, ptr %i.f, align 8, !tbaa !13
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIRS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = invoke noundef zeroext i1 %i.ab(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIRS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #26
  unreachable

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIRS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.t

bb.l:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  store i64 0, ptr %i.e, align 8
  store ptr @_ZN6duckdb14ScalarFunction13UnaryFunctionIddNS_12_GLOBAL__N_113FloorOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %1, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i35)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i35, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i35, i64 16, i1 false), !tbaa.struct !24
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i35)
  %i.af = load <2 x ptr>, ptr %i.f, align 8, !tbaa !13
  %i.ag = load ptr, ptr %i.f, align 8, !tbaa !13  ; 2 uses
  store <2 x ptr> %i.af, ptr %i.d, align 8, !tbaa !13
  store <2 x ptr> <ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_>, ptr %i.f, align 8, !tbaa !13
  %.not.i.i36 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i36, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIRS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit37, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = invoke noundef zeroext i1 %i.ag(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIRS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit37 unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #26
  unreachable

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIRS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit37: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.t

bb.o:                                             ; preds = %bb.h
  %i.ak = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.p unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @__cxa_throw(ptr nonnull %i.ak, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.bm unwind label %bb.r

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.o
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  %.021 = phi i1 [ false, %bb.q ], [ true, %bb.p ] ; 2 uses
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.an = load ptr, ptr %5, align 8, !tbaa !238   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.r
  call void @_ZdlPv(ptr noundef %i.an) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %.021, label %bb.s, label %bb.bi

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %.021, label %bb.s, label %bb.bi

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn3172 = phi { ptr, i32 } [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.ak) #23
  br label %bb.bi

bb.t:                                             ; preds = %bb.h, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIRS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit37, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIRS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit
  %.023 = phi ptr [ null, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIRS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit ], [ null, %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSIRS7_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS8_E4typeEOSC_.exit37 ], [ @_ZN6duckdbL31BindGenericRoundFunctionDecimalINS_12_GLOBAL__N_120FloorDecimalOperatorEEENS_10unique_ptrINS_12FunctionDataESt14default_deleteIS4_ELb1EEERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS3_INS_10ExpressionES5_ISD_ELb1EEELb1ESaISF_EEE, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.067.098)
          to label %bb.u unwind label %bb.ay

bb.u:                                             ; preds = %bb.t
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.aq = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24
          to label %.noexc63 unwind label %.body64.thread ; 3 uses

.noexc63:                                         ; preds = %bb.u
  store ptr %i.aq, ptr %8, align 8, !tbaa !7
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24 ; 2 uses
  store ptr %i.ar, ptr %i.i, align 8, !tbaa !11
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i

_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.noexc63
  store ptr %i.ar, ptr %i.j, align 8, !tbaa !12
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.067.098)
          to label %bb.z unwind label %bb.az

_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i: ; preds = %.noexc63
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  %i.au = call ptr @__cxa_begin_catch(ptr %i.at) #23 ; 0 uses
  invoke void @__cxa_rethrow() #25
          to label %bb.x unwind label %bb.v

bb.v:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @__cxa_end_catch()
          to label %.body64 unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  call void @__clang_call_terminate(ptr %i.ax) #26
  unreachable

bb.x:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i
  unreachable

.body64.thread:                                   ; preds = %bb.u
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body64:                                          ; preds = %bb.v
  %.pr = load ptr, ptr %8, align 8, !tbaa !7      ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i, label %.body, label %bb.y

bb.y:                                             ; preds = %.body64
  call void @_ZdlPv(ptr noundef nonnull %.pr) #27
  br label %.body

bb.z:                                             ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  %i.az = load ptr, ptr %i.f, align 8, !tbaa !17  ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2ERKS8_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ba = invoke noundef zeroext i1 %i.az(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 2)
          to label %bb.ab unwind label %bb.ac     ; 0 uses

bb.ab:                                            ; preds = %bb.aa
  %i.bb = load <2 x ptr>, ptr %i.f, align 8, !tbaa !13
  store <2 x ptr> %i.bb, ptr %i.k, align 8, !tbaa !13
  br label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2ERKS8_.exit

bb.ac:                                            ; preds = %bb.aa
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bd = load ptr, ptr %i.k, align 8, !tbaa !17  ; 2 uses
  %.not.i.i38 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i38, label %.body39, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.be = invoke noundef zeroext i1 %i.bd(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body39 unwind label %bb.ae   ; 0 uses

bb.ae:                                            ; preds = %bb.ad
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #26
  unreachable

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2ERKS8_.exit: ; preds = %bb.ab, %bb.z
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 noundef zeroext 0)
          to label %bb.af unwind label %bb.ba

bb.af:                                            ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2ERKS8_.exit
  invoke void @_ZN6duckdb14ScalarFunctionC1ENS_6vectorINS_11LogicalTypeELb1ESaIS2_EEES2_St8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEEPFNS_10unique_ptrINS_12FunctionDataESt14default_deleteISF_ELb1EEERNS_13ClientContextERS0_RNS1_INSE_INS_10ExpressionESG_ISM_ELb1EEELb1ESaISO_EEEEPFSI_RNS_23ScalarFunctionBindInputESL_SR_EPFNSE_INS_14BaseStatisticsESG_ISY_ELb1EEESK_RNS_23FunctionStatisticsInputEEPFNSE_INS_18FunctionLocalStateESG_IS15_ELb1EEES9_RKNS_23BoundFunctionExpressionEPSF_ES2_NS_17FunctionStabilityENS_20FunctionNullHandlingEPFS2_SK_RKS4_mE(ptr noundef nonnull align 8 dereferenceable(360) %7, ptr noundef nonnull %8, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef %.023, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %12, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef null)
          to label %bb.ag unwind label %bb.bb

bb.ag:                                            ; preds = %bb.af
  %i.bh = load ptr, ptr %i.l, align 8, !tbaa !18  ; 10 uses
  %i.bi = load ptr, ptr %i.m, align 8, !tbaa !21
  %.not.i.i.i41 = icmp eq ptr %i.bh, %i.bi
  br i1 %.not.i.i.i41, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN6duckdb18BaseScalarFunctionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(360) %i.bh, ptr noundef nonnull align 8 dereferenceable(360) %7)
          to label %.noexc unwind label %bb.bc

.noexc:                                           ; preds = %bb.ah
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb14ScalarFunctionE, i64 16), ptr %i.bh, align 8, !tbaa !22
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 240 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i8 0, i64 24, i1 false)
  %i.bl = load ptr, ptr %i.n, align 8, !tbaa !14
  store ptr %i.bl, ptr %i.bk, align 8, !tbaa !14
  %i.bm = load ptr, ptr %i.o, align 8, !tbaa !17
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZN6duckdb14ScalarFunctionC2EOS0_.exit.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %.noexc
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 16, i1 false), !tbaa.struct !24
  %i.bo = load ptr, ptr %i.o, align 8, !tbaa !17
  store ptr %i.bo, ptr %i.bn, align 8, !tbaa !17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  br label %_ZN6duckdb14ScalarFunctionC2EOS0_.exit.i.i.i

_ZN6duckdb14ScalarFunctionC2EOS0_.exit.i.i.i:     ; preds = %bb.ai, %.noexc
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bp, ptr noundef nonnull align 8 dereferenceable(72) %i.q, i64 72, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bh, i64 344
  %i.br = getelementptr inbounds nuw i8, ptr %i.bh, i64 352
  store ptr null, ptr %i.br, align 8, !tbaa !26
  %i.bs = load <2 x ptr>, ptr %i.r, align 8, !tbaa !13
  store ptr null, ptr %i.s, align 8, !tbaa !26
  store <2 x ptr> %i.bs, ptr %i.bq, align 8, !tbaa !13
  store ptr null, ptr %i.r, align 8, !tbaa !29
  %i.bt = load ptr, ptr %i.l, align 8, !tbaa !18
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 360
  store ptr %i.bu, ptr %i.l, align 8, !tbaa !18
  br label %_ZN6duckdb11FunctionSetINS_14ScalarFunctionEE11AddFunctionES1_.exit

bb.aj:                                            ; preds = %bb.ag
  invoke void @_ZNSt6vectorIN6duckdb14ScalarFunctionESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr %i.bh, ptr noundef nonnull align 8 dereferenceable(360) %7)
          to label %_ZN6duckdb11FunctionSetINS_14ScalarFunctionEE11AddFunctionES1_.exit unwind label %bb.bc

_ZN6duckdb11FunctionSetINS_14ScalarFunctionEE11AddFunctionES1_.exit: ; preds = %_ZN6duckdb14ScalarFunctionC2EOS0_.exit.i.i.i, %bb.aj
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb14ScalarFunctionE, i64 16), ptr %7, align 8, !tbaa !22
  %i.bv = load ptr, ptr %i.s, align 8, !tbaa !26  ; 8 uses
  %.not.i.i.i.i43 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i43, label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i, label %bb.ak

bb.ak:                                            ; preds = %_ZN6duckdb11FunctionSetINS_14ScalarFunctionEE11AddFunctionES1_.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 4 uses
  %i.bx = load atomic i64, ptr %i.bw acquire, align 8 ; 2 uses
  %i.by = icmp eq i64 %i.bx, 4294967297
  %i.bz = trunc i64 %i.bx to i32                  ; 2 uses
  br i1 %i.by, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 0, ptr %i.bw, align 8, !tbaa !32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  store i32 0, ptr %i.ca, align 4, !tbaa !34
  %i.cb = load ptr, ptr %i.bv, align 8, !tbaa !22
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #23, !inline_history !35
  %i.ce = load ptr, ptr %i.bv, align 8, !tbaa !22
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #23, !inline_history !35
  br label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i

bb.am:                                            ; preds = %bb.ak
  %i.ch = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i.i = icmp eq i8 %i.ch, 0
  br i1 %.not.i.i.i.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ci = add nsw i32 %i.bz, -1
  store i32 %i.ci, ptr %i.bw, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ao:                                            ; preds = %bb.am
  %i.cj = atomicrmw volatile add ptr %i.bw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ao, %bb.an
  %.0.i.i.i.i.i.i = phi i32 [ %i.bz, %bb.an ], [ %i.cj, %bb.ao ]
  %i.ck = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ck, label %bb.ap, label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i, !prof !36

bb.ap:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #23, !inline_history !37
  br label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i

_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i: ; preds = %bb.ap, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.al, %_ZN6duckdb11FunctionSetINS_14ScalarFunctionEE11AddFunctionES1_.exit
  %i.cl = load ptr, ptr %i.o, align 8, !tbaa !17  ; 2 uses
  %.not.i.i44 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i44, label %_ZN6duckdb14ScalarFunctionD2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i
  %i.cm = invoke noundef zeroext i1 %i.cl(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i32 noundef 3)
          to label %_ZN6duckdb14ScalarFunctionD2Ev.exit unwind label %bb.ar, !inline_history !37 ; 0 uses

bb.ar:                                            ; preds = %bb.aq
  %i.cn = landingpad { ptr, i32 }
          catch ptr null
  %i.co = extractvalue { ptr, i32 } %i.cn, 0
  call void @__clang_call_terminate(ptr %i.co) #26, !inline_history !37
  unreachable

_ZN6duckdb14ScalarFunctionD2Ev.exit:              ; preds = %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i, %bb.aq
  call void @_ZN6duckdb18BaseScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %7) #23, !inline_history !37
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #23
  %i.cp = load ptr, ptr %i.k, align 8, !tbaa !17  ; 2 uses
  %.not.i = icmp eq ptr %i.cp, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.as

bb.as:                                            ; preds = %_ZN6duckdb14ScalarFunctionD2Ev.exit
  %i.cq = invoke noundef zeroext i1 %i.cp(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.at ; 0 uses

bb.at:                                            ; preds = %bb.as
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
  call void @__clang_call_terminate(ptr %i.cs) #26
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN6duckdb14ScalarFunctionD2Ev.exit, %bb.as
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #23
  %i.ct = load ptr, ptr %8, align 8, !tbaa !7     ; 3 uses
  %i.cu = load ptr, ptr %i.j, align 8, !tbaa !12  ; 2 uses
  %.not4.i.i.i46 = icmp eq ptr %i.ct, %i.cu
  br i1 %.not4.i.i.i46, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i52, label %.lr.ph.i.i.i47

.lr.ph.i.i.i47:                                   ; preds = %_ZNSt14_Function_baseD2Ev.exit, %.lr.ph.i.i.i47
  %.05.i.i.i48 = phi ptr [ %i.cv, %.lr.ph.i.i.i47 ], [ %i.ct, %_ZNSt14_Function_baseD2Ev.exit ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i48) #23
  %i.cv = getelementptr inbounds nuw i8, ptr %.05.i.i.i48, i64 24 ; 2 uses
  %.not.i.i.i49 = icmp eq ptr %i.cv, %i.cu
  br i1 %.not.i.i.i49, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i50, label %.lr.ph.i.i.i47, !llvm.loop !38

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i50: ; preds = %.lr.ph.i.i.i47
  %.pr.i51 = load ptr, ptr %8, align 8, !tbaa !7
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i52

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i52: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i50, %_ZNSt14_Function_baseD2Ev.exit
  %i.cw = phi ptr [ %.pr.i51, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i50 ], [ %i.ct, %_ZNSt14_Function_baseD2Ev.exit ] ; 2 uses
  %.not.i.i1.i53 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i1.i53, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit54, label %bb.au

bb.au:                                            ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i52
  call void @_ZdlPv(ptr noundef nonnull %i.cw) #27
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit54

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit54: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i52, %bb.au
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.av

bb.av:                                            ; preds = %bb.f, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit54
  %i.cx = load ptr, ptr %i.f, align 8, !tbaa !17  ; 2 uses
  %.not.i55 = icmp eq ptr %i.cx, null
  br i1 %.not.i55, label %_ZNSt14_Function_baseD2Ev.exit56, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.cy = invoke noundef zeroext i1 %i.cx(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit56 unwind label %bb.ax ; 0 uses

bb.ax:                                            ; preds = %bb.aw
  %i.cz = landingpad { ptr, i32 }
          catch ptr null
  %i.da = extractvalue { ptr, i32 } %i.cz, 0
  call void @__clang_call_terminate(ptr %i.da) #26
  unreachable

_ZNSt14_Function_baseD2Ev.exit56:                 ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.067.098, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.db, %i.c
  br i1 %.not, label %._crit_edge, label %bb.e

bb.ay:                                            ; preds = %bb.t
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.az:                                            ; preds = %_ZSt10_ConstructIN6duckdb11LogicalTypeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.ba:                                            ; preds = %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2ERKS8_.exit
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.bb:                                            ; preds = %bb.af
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bc:                                            ; preds = %bb.aj, %bb.ah
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb14ScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %7) #23
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.pn = phi { ptr, i32 } [ %i.dg, %bb.bc ], [ %i.df, %bb.bb ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #23
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.ba
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.bd ], [ %i.de, %bb.ba ] ; 2 uses
  %i.dh = load ptr, ptr %i.k, align 8, !tbaa !17  ; 2 uses
  %.not.i57 = icmp eq ptr %i.dh, null
  br i1 %.not.i57, label %.body39, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.di = invoke noundef zeroext i1 %i.dh(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body39 unwind label %bb.bg   ; 0 uses

bb.bg:                                            ; preds = %bb.bf
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
  %i.dk = extractvalue { ptr, i32 } %i.dj, 0
  call void @__clang_call_terminate(ptr %i.dk) #26
  unreachable

.body39:                                          ; preds = %bb.bf, %bb.be, %bb.ad, %bb.ac
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bc, %bb.ac ], [ %.pn.pn, %bb.bf ], [ %i.bc, %bb.ad ], [ %.pn.pn, %bb.be ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #23
  br label %bb.bh

bb.bh:                                            ; preds = %.body39, %bb.az
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body39 ], [ %i.dd, %bb.az ]
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #23
  br label %.body

.body:                                            ; preds = %.body64.thread, %bb.y, %.body64, %bb.bh
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.bh ], [ %i.av, %.body64 ], [ %i.av, %bb.y ], [ %i.ay, %.body64.thread ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #23
  br label %.loopexit

.loopexit:                                        ; preds = %.body, %bb.ay
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dc, %bb.ay ], [ %.pn.pn.pn.pn.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.bi

bb.bi:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.s, %.loopexit, %bb.g
  %.pn31.pn = phi { ptr, i32 } [ %.pn3172, %bb.s ], [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn.pn.pn.pn.pn.pn, %.loopexit ], [ %i.y, %bb.g ], [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.dl = load ptr, ptr %i.f, align 8, !tbaa !17  ; 2 uses
  %.not.i59 = icmp eq ptr %i.dl, null
  br i1 %.not.i59, label %_ZNSt14_Function_baseD2Ev.exit60, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.dm = invoke noundef zeroext i1 %i.dl(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit60 unwind label %bb.bk ; 0 uses

bb.bk:                                            ; preds = %bb.bj
  %i.dn = landingpad { ptr, i32 }
          catch ptr null
  %i.do = extractvalue { ptr, i32 } %i.dn, 0
  call void @__clang_call_terminate(ptr %i.do) #26
  unreachable

_ZNSt14_Function_baseD2Ev.exit60:                 ; preds = %bb.bi, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.bl

bb.bl:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit60, %bb.d
  %.pn31.pn.pn = phi { ptr, i32 } [ %.pn31.pn, %_ZNSt14_Function_baseD2Ev.exit60 ], [ %i.w, %bb.d ]
  call void @_ZN6duckdb11FunctionSetINS_14ScalarFunctionEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #23
  resume { ptr, i32 } %.pn31.pn.pn

bb.bm:                                            ; preds = %bb.q
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb14ScalarFunction13UnaryFunctionIffNS_12_GLOBAL__N_113FloorOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0) ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !40   ; 19 uses
  %i.d = load i8, ptr %i.a, align 8, !tbaa !55
  switch i8 %i.d, label %bb.u [
    i8 2, label %bb.b
    i8 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIfEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !77
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIfEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !77
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !78   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !tbaa !79
  %i.l = trunc i64 %i.k to i1
  br i1 %i.l, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
  br label %_ZN6duckdb13UnaryExecutor7ExecuteIffNS_12_GLOBAL__N_113FloorOperatorEEEvRNS_6VectorES5_m.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i, %bb.b
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext false)
  %i.m = load float, ptr %i.h, align 4, !tbaa !164
  %i.n = tail call noundef float @llvm.floor.f32(float %i.m)
  store float %i.n, ptr %i.f, align 4, !tbaa !164
  br label %_ZN6duckdb13UnaryExecutor7ExecuteIffNS_12_GLOBAL__N_113FloorOperatorEEEvRNS_6VectorES5_m.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIfEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !77   ; 7 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIfEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !77   ; 7 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !513)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !516)
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !78, !noalias !518 ; 2 uses
  %.not.i.i59.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i59.i.i, label %.preheader.i.i.i, label %bb.e

.preheader.i.i.i:                                 ; preds = %bb.d
  %.not19.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not19.i.i.i, label %_ZN6duckdb13UnaryExecutor7ExecuteIffNS_12_GLOBAL__N_113FloorOperatorEEEvRNS_6VectorES5_m.exit, label %.lr.ph17.i.i.i.preheader

.lr.ph17.i.i.i.preheader:                         ; preds = %.preheader.i.i.i
  %min.iters.check44 = icmp ult i64 %i.c, 4
  br i1 %min.iters.check44, label %.lr.ph17.i.i.i.preheader71, label %vector.ph45

vector.ph45:                                      ; preds = %.lr.ph17.i.i.i.preheader
  %n.vec47 = and i64 %i.c, -4                     ; 3 uses
  br label %vector.body48

vector.body48:                                    ; preds = %vector.body48, %vector.ph45
  %index49 = phi i64 [ 0, %vector.ph45 ], [ %index.next51, %vector.body48 ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %index49
  %wide.load50 = load <4 x float>, ptr %i.u, align 4, !tbaa !164, !alias.scope !513, !noalias !516
  %i.v = tail call <4 x float> @llvm.floor.v4f32(<4 x float> %wide.load50)
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index49
  store <4 x float> %i.v, ptr %i.w, align 4, !tbaa !164, !alias.scope !516, !noalias !513
  %index.next51 = add nuw i64 %index49, 4         ; 2 uses
  %i.x = icmp eq i64 %index.next51, %n.vec47
  br i1 %i.x, label %middle.block52, label %vector.body48, !llvm.loop !519

middle.block52:                                   ; preds = %vector.body48
  %cmp.n53 = icmp eq i64 %i.c, %n.vec47
  br i1 %cmp.n53, label %_ZN6duckdb13UnaryExecutor7ExecuteIffNS_12_GLOBAL__N_113FloorOperatorEEEvRNS_6VectorES5_m.exit, label %.lr.ph17.i.i.i.preheader71

.lr.ph17.i.i.i.preheader71:                       ; preds = %.lr.ph17.i.i.i.preheader, %middle.block52
  %.016.i.i.i.ph = phi i64 [ 0, %.lr.ph17.i.i.i.preheader ], [ %n.vec47, %middle.block52 ]
  br label %.lr.ph17.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.t, ptr %i.y, align 8, !tbaa !78, !noalias !518
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aa = icmp eq ptr %2, %i.a
  br i1 %i.aa, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !26, !noalias !518 ; 2 uses
  %i.ae = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !13, !noalias !518
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25, !noalias !518
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !3, !noalias !518
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.af, align 4, !tbaa !3, !noalias !518
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.aj = atomicrmw volatile add ptr %i.af, i32 1 acq_rel, align 4, !noalias !518 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h, %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !26, !noalias !518 ; 8 uses
  store <2 x ptr> %i.ae, ptr %i.z, align 8, !tbaa !13, !noalias !518
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 4 uses
  %i.an = load atomic i64, ptr %i.am acquire, align 8, !noalias !518 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 4294967297
  %i.ap = trunc i64 %i.an to i32                  ; 2 uses
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.am, align 8, !tbaa !32, !noalias !518
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i32 0, ptr %i.aq, align 4, !tbaa !34, !noalias !518
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !22, !noalias !518
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !noalias !518
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #23, !noalias !518, !inline_history !520
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !22, !noalias !518
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !518
  tail call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #23, !noalias !518, !inline_history !520
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ax = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25, !noalias !518
  %.not.i.i.i.i5.i.i.i.i.i = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i.i.i5.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = add nsw i32 %i.ap, -1
  store i32 %i.ay, ptr %i.am, align 8, !tbaa !3, !noalias !518
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.az = atomicrmw volatile add ptr %i.am, i32 -1 acq_rel, align 4, !noalias !518
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ap, %bb.m ], [ %i.az, %bb.n ]
  %i.ba = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ba, label %bb.o, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, !prof !36

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #23, !noalias !518
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i
end_hunk_3
