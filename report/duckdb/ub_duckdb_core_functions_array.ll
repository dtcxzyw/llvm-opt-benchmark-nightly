inline.NumInlined: 1137
inline.NumDeleted: 352
begin_hunk_0_@_ZN6duckdb13ArrayValueFun11GetFunctionEv:._crit_edge.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.k, %i.m
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt14_Function_baseD2Ev.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %i.k, %_ZNSt14_Function_baseD2Ev.exit ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i) #20
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.n, %i.m
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !21

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !18
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt14_Function_baseD2Ev.exit
  %i.o = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.k, %_ZNSt14_Function_baseD2Ev.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.o) #19
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.f
  %i.p = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.a
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.p) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 noundef zeroext 3)
          to label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i unwind label %bb.l

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.s = load i8, ptr %6, align 8, !tbaa !23
  store i8 %i.s, ptr %i.r, align 8, !tbaa !23
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !147
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 185
  store i8 %i.u, ptr %i.v, align 1, !tbaa !147
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.y = load <2 x ptr>, ptr %i.x, align 8, !tbaa !34
  %i.z = load <2 x ptr>, ptr %i.w, align 8, !tbaa !34
  store <2 x ptr> %i.y, ptr %i.w, align 8, !tbaa !34
  store <2 x ptr> %i.z, ptr %i.x, align 8, !tbaa !34
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 233
  store i8 1, ptr %i.aa, align 1, !tbaa !148
  ret void

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.thread:                                          ; preds = %bb.a
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #20
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !35  ; 2 uses
  %.not.i11 = icmp eq ptr %.pre, null
  br i1 %.not.i11, label %_ZNSt14_Function_baseD2Ev.exit12, label %bb.i

bb.i:                                             ; preds = %.thread, %bb.h
  %.pn24 = phi { ptr, i32 } [ %i.ac, %.thread ], [ %i.ad, %bb.h ]
  %i.ae = phi ptr [ @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, %.thread ], [ %.pre, %bb.h ]
  %i.af = invoke noundef zeroext i1 %i.ae(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit12 unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit12:                 ; preds = %bb.h, %bb.i
  %.pn25 = phi { ptr, i32 } [ %i.ad, %bb.h ], [ %.pn24, %bb.i ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #20
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit12, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %.pn25, %_ZNSt14_Function_baseD2Ev.exit12 ], [ %i.ab, %bb.g ] ; 2 uses
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #20
  %i.ai = load ptr, ptr %1, align 8, !tbaa !15    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.a
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.k
  call void @_ZdlPv(ptr noundef %i.ai) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @_ZN6duckdb14ScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %0) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13, %bb.l
  %.pn9 = phi { ptr, i32 } [ %i.ak, %bb.l ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13 ], [ %.pn.pn, %bb.k ]
  resume { ptr, i32 } %.pn9
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_118ArrayValueFunctionERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %4 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %5 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.b = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb9ArrayType12GetChildTypeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
          to label %.preheader48 unwind label %bb.c

.preheader48:                                     ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !149
  %i.e = load ptr, ptr %0, align 8, !tbaa !150
  %.not56 = icmp eq ptr %i.d, %i.e
  br i1 %.not56, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.g, %.preheader48
  %.lcssa = phi i64 [ 0, %.preheader48 ], [ %i.s, %bb.g ] ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !113  ; 3 uses
  %i.h = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb11ArrayVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.h unwind label %bb.k       ; 3 uses

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.d:                                             ; preds = %bb.f, %.lr.ph
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.lr.ph:                                           ; preds = %.preheader48, %bb.g
  %.03950 = phi i64 [ %i.m, %bb.g ], [ 0, %.preheader48 ] ; 2 uses
  %i.k = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.03950)
          to label %bb.e unwind label %bb.d

bb.e:                                             ; preds = %.lr.ph
  %i.l = load i8, ptr %i.k, align 8, !tbaa !151
  %.not = icmp eq i8 %i.l, 2
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
          to label %bb.g unwind label %bb.d

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.m = add nuw i64 %.03950, 1                   ; 2 uses
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !149
  %i.o = load ptr, ptr %0, align 8, !tbaa !150
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = sdiv exact i64 %i.r, 104                 ; 2 uses
  %i.t = icmp ult i64 %i.m, %i.s
  br i1 %i.t, label %.lr.ph, label %._crit_edge, !llvm.loop !152

bb.h:                                             ; preds = %._crit_edge
  %i.u = icmp ugt i64 %.lcssa, 1
  br i1 %i.u, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.h)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.w = mul i64 %i.g, %.lcssa
  invoke void @_ZN6duckdb12ValidityMask6ResizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 noundef %i.w)
          to label %bb.m unwind label %bb.l

bb.k:                                             ; preds = %._crit_edge55, %._crit_edge
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.l:                                             ; preds = %bb.i, %bb.j
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.m:                                             ; preds = %bb.j, %bb.h
  %.not63 = icmp eq i64 %i.g, 0
  %.not64 = icmp eq i64 %.lcssa, 0
  %or.cond = or i1 %.not63, %.not64
  br i1 %or.cond, label %._crit_edge55, label %.preheader

.preheader:                                       ; preds = %bb.m, %._crit_edge53.us
  %.03354 = phi i64 [ %6, %._crit_edge53.us ], [ 0, %bb.m ] ; 3 uses
  %i.z = mul i64 %.03354, %.lcssa
  br label %bb.n

bb.n:                                             ; preds = %.preheader, %bb.q
  %.051 = phi i64 [ 0, %.preheader ], [ %i.ab, %bb.q ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  invoke void @_ZNK6duckdb9DataChunk8GetValueEmm(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %5, ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %.051, i64 noundef %.03354)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %bb.n
  invoke void @_ZNK6duckdb5Value13DefaultCastAsERKNS_11LogicalTypeEb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %4, ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i1 noundef zeroext false)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %bb.o
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.aa = add i64 %.051, %i.z
  invoke void @_ZN6duckdb6Vector8SetValueEmRKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(104) %i.h, i64 noundef %i.aa, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %bb.p
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.ab = add nuw i64 %.051, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ab, %.lcssa
  br i1 %exitcond.not, label %._crit_edge53.us, label %bb.n, !llvm.loop !153

._crit_edge53.us:                                 ; preds = %bb.q
  %6 = add nuw i64 %.03354, 1                     ; 2 uses
  %exitcond67.not = icmp eq i64 %6, %i.g
  br i1 %exitcond67.not, label %._crit_edge55, label %.preheader, !llvm.loop !154

bb.r:                                             ; preds = %bb.n
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.s:                                             ; preds = %bb.o
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #20
  br label %bb.u

bb.t:                                             ; preds = %bb.p
  %7 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #20
  br label %bb.v

._crit_edge55:                                    ; preds = %._crit_edge53.us, %bb.m
  %8 = load i64, ptr %i.f, align 8, !tbaa !113
  invoke void @_ZN6duckdb6Vector6VerifyEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %8)
          to label %bb.w unwind label %bb.k

bb.u:                                             ; preds = %bb.s, %bb.r
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.s ], [ %i.ac, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %.pn43 = phi { ptr, i32 } [ %7, %bb.t ], [ %.pn, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.x

bb.w:                                             ; preds = %._crit_edge55
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void

bb.x:                                             ; preds = %bb.k, %bb.l, %bb.v, %bb.d, %bb.c
  %.pn46 = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.i, %bb.c ], [ %.pn43, %bb.v ], [ %i.x, %bb.k ], [ %i.y, %bb.l ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %.pn46
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_114ArrayValueBindERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::LogicalType", align 8 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %7 = alloca %"struct.duckdb::LogicalType", align 8 ; 15 uses
  %8 = alloca %"struct.duckdb::LogicalType", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::allocator", align 1   ; 5 uses
  %11 = alloca %"struct.duckdb::LogicalType", align 8 ; 5 uses
  %12 = alloca %"class.duckdb::optional_idx", align 8 ; 2 uses
  %i.a = load ptr, ptr %3, align 8, !tbaa !155
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !155
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb21InvalidInputExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.ae unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.017 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.h = load ptr, ptr %5, align 8, !tbaa !15     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.h) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %.017, label %bb.f, label %bb.ad

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %.017, label %bb.f, label %bb.ad

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn2849 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #20
  br label %bb.ad

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 0)
  %i.l = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  call void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %i.m)
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !157
  %i.o = load ptr, ptr %3, align 8, !tbaa !159
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = icmp ugt i64 %i.r, 8
  br i1 %i.s, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 1
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 1
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i
  %i.x = icmp ugt i64 %i.al, 100000
  br i1 %i.x, label %bb.l, label %._crit_edge.thread

bb.h:                                             ; preds = %.lr.ph, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i
  %.01655 = phi i64 [ 1, %.lr.ph ], [ %i.af, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %.01655)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.z = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.y)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  invoke void @_ZN6duckdb11LogicalType14MaxLogicalTypeERNS_13ClientContextERKS0_S4_(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %8, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i unwind label %bb.k

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i: ; preds = %bb.j
  %i.ab = load i8, ptr %8, align 8, !tbaa !23
  store i8 %i.ab, ptr %7, align 8, !tbaa !23
  %i.ac = load i8, ptr %i.t, align 1, !tbaa !147
  store i8 %i.ac, ptr %i.u, align 1, !tbaa !147
  %i.ad = load <2 x ptr>, ptr %i.w, align 8, !tbaa !34
  %i.ae = load <2 x ptr>, ptr %i.v, align 8, !tbaa !34
  store <2 x ptr> %i.ad, ptr %i.v, align 8, !tbaa !34
  store <2 x ptr> %i.ae, ptr %i.w, align 8, !tbaa !34
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.af = add nuw i64 %.01655, 1                  ; 2 uses
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !157
  %i.ah = load ptr, ptr %3, align 8, !tbaa !159
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 3                 ; 2 uses
  %i.am = icmp ult i64 %i.af, %i.al
  br i1 %i.am, label %bb.h, label %._crit_edge, !llvm.loop !160

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %.body

bb.l:                                             ; preds = %._crit_edge
  %i.ao = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.m unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33.thread

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN6duckdb19OutOfRangeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @__cxa_throw(ptr nonnull %i.ao, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.ae unwind label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33.thread: ; preds = %bb.l
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0 = phi i1 [ false, %bb.n ], [ true, %bb.m ]  ; 2 uses
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ar = load ptr, ptr %9, align 8, !tbaa !15    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %bb.o
  call void @_ZdlPv(ptr noundef %i.ar) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br i1 %.0, label %bb.p, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br i1 %.0, label %bb.p, label %.body

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %.pn52 = phi { ptr, i32 } [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33.thread ], [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31 ]
  call void @__cxa_free_exception(ptr %i.ao) #20
  br label %.body

._crit_edge.thread:                               ; preds = %bb.g, %._crit_edge
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.av = load i8, ptr %7, align 8, !tbaa !23
  store i8 %i.av, ptr %i.au, align 8, !tbaa !23
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !147
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 185
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !147
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 8
end_hunk_0
