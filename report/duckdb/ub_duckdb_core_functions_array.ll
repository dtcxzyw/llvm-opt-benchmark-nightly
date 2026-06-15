inline.NumInlined: 1137
inline.NumDeleted: 352
begin_hunk_0_@_ZN6duckdb13ArrayValueFun11GetFunctionEv:._crit_edge.i.i

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
  %.not62 = icmp eq ptr %i.d, %i.e
  br i1 %.not62, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.g, %.preheader48
  %.lcssa = phi i64 [ 0, %.preheader48 ], [ %i.s, %bb.g ] ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !113  ; 3 uses
  %i.h = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb11ArrayVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.h unwind label %bb.k       ; 3 uses

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.d:                                             ; preds = %bb.f, %.lr.ph
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

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
  br label %bb.u

bb.l:                                             ; preds = %bb.i, %bb.j
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.m:                                             ; preds = %bb.j, %bb.h
  %.not63 = icmp eq i64 %i.g, 0
  %.not64 = icmp eq i64 %.lcssa, 0
  %or.cond = or i1 %.not63, %.not64
  br i1 %or.cond, label %._crit_edge55, label %.preheader.us

.preheader.us:                                    ; preds = %bb.m, %._crit_edge53.us
  %.03354.us = phi i64 [ %i.ac, %._crit_edge53.us ], [ 0, %bb.m ] ; 3 uses
  %i.z = mul i64 %.03354.us, %.lcssa
  br label %bb.n

bb.n:                                             ; preds = %.preheader.us, %bb.q
  %.051.us = phi i64 [ 0, %.preheader.us ], [ %i.ab, %bb.q ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  invoke void @_ZNK6duckdb9DataChunk8GetValueEmm(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %5, ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %.051.us, i64 noundef %.03354.us)
          to label %bb.o unwind label %.split.us

bb.o:                                             ; preds = %bb.n
  invoke void @_ZNK6duckdb5Value13DefaultCastAsERKNS_11LogicalTypeEb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %4, ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i1 noundef zeroext false)
          to label %bb.p unwind label %.split57.us

bb.p:                                             ; preds = %bb.o
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.aa = add i64 %.051.us, %i.z
  invoke void @_ZN6duckdb6Vector8SetValueEmRKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(104) %i.h, i64 noundef %i.aa, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %bb.q unwind label %.split60.us

bb.q:                                             ; preds = %bb.p
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.ab = add nuw i64 %.051.us, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ab, %.lcssa
  br i1 %exitcond.not, label %._crit_edge53.us, label %bb.n, !llvm.loop !153

._crit_edge53.us:                                 ; preds = %bb.q
  %i.ac = add nuw i64 %.03354.us, 1               ; 2 uses
  %exitcond67.not = icmp eq i64 %i.ac, %i.g
  br i1 %exitcond67.not, label %._crit_edge55, label %.preheader.us, !llvm.loop !154

.split.us:                                        ; preds = %bb.n
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.split57.us:                                      ; preds = %bb.o
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #20
  br label %bb.r

.split60.us:                                      ; preds = %bb.p
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #20
  br label %bb.s

._crit_edge55:                                    ; preds = %._crit_edge53.us, %bb.m
  %i.ag = load i64, ptr %i.f, align 8, !tbaa !113
  invoke void @_ZN6duckdb6Vector6VerifyEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.ag)
          to label %bb.t unwind label %bb.k

bb.r:                                             ; preds = %.split57.us, %.split.us
  %.pn = phi { ptr, i32 } [ %i.ae, %.split57.us ], [ %i.ad, %.split.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.s

bb.s:                                             ; preds = %.split60.us, %bb.r
  %.pn43 = phi { ptr, i32 } [ %i.af, %.split60.us ], [ %.pn, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge55
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void

bb.u:                                             ; preds = %bb.k, %bb.l, %bb.s, %bb.d, %bb.c
  %.pn46 = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.i, %bb.c ], [ %.pn43, %bb.s ], [ %i.x, %bb.k ], [ %i.y, %bb.l ]
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
          to label %bb.af unwind label %bb.e

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
  br i1 %.017, label %bb.f, label %bb.ae

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %.017, label %bb.f, label %bb.ae

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn2849 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #20
  br label %bb.ae

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
  br i1 %i.s, label %.lr.ph, label %bb.q

.lr.ph:                                           ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 1
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 1
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i
  %i.x = icmp ugt i64 %i.al, 100000
  br i1 %i.x, label %bb.l, label %bb.q

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
          to label %bb.af unwind label %bb.o

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

bb.q:                                             ; preds = %bb.g, %._crit_edge
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.au = load i8, ptr %7, align 8, !tbaa !23
  store i8 %i.au, ptr %13, align 8, !tbaa !23
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !147
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 185
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !147
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !51 ; 2 uses
  %i.bc = load <2 x ptr>, ptr %i.az, align 8, !tbaa !34
  %.not.i.i.i.i.i.i34 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i.i.i34, label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 3 uses
  %i.be = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i.i35 = icmp eq i8 %i.be, 0
  br i1 %.not.i.i.i.i.i.i.i35, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bf = load i32, ptr %i.bd, align 4, !tbaa !3
  %i.bg = add nsw i32 %i.bf, 1
  store i32 %i.bg, ptr %i.bd, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i

bb.t:                                             ; preds = %bb.r
  %i.bh = atomicrmw volatile add ptr %i.bd, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i: ; preds = %bb.t, %bb.s, %bb.q
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !51 ; 8 uses
  store <2 x ptr> %i.bc, ptr %i.ay, align 8, !tbaa !34
  %.not.i.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit, label %bb.u

bb.u:                                             ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 4 uses
  %i.bl = load atomic i64, ptr %i.bk acquire, align 8 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 4294967297
  %i.bn = trunc i64 %i.bl to i32                  ; 2 uses
  br i1 %i.bm, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.bk, align 8, !tbaa !62
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i32 0, ptr %i.bo, align 4, !tbaa !64
  %i.bp = load ptr, ptr %i.bj, align 8, !tbaa !49
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #20, !inline_history !161
  %i.bs = load ptr, ptr %i.bj, align 8, !tbaa !49
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #20, !inline_history !161
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

bb.w:                                             ; preds = %bb.u
  %i.bv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i5.i.i = icmp eq i8 %i.bv, 0
  br i1 %.not.i.i.i.i5.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bw = add nsw i32 %i.bn, -1
  store i32 %i.bw, ptr %i.bk, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.bx = atomicrmw volatile add ptr %i.bk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bn, %bb.x ], [ %i.bx, %bb.y ]
  %i.by = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.by, label %bb.z, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit, !prof !66

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #20
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

_ZN6duckdb11LogicalTypeaSERKS0_.exit:             ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i, %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.z
  %i.bz = load ptr, ptr %i.b, align 8, !tbaa !157
  %i.ca = load ptr, ptr %3, align 8, !tbaa !159
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = ashr exact i64 %i.cd, 3
  invoke void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef %i.ce)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %_ZN6duckdb11LogicalTypeaSERKS0_.exit
  %i.cf = load i64, ptr %12, align 8
  invoke void @_ZN6duckdb11LogicalType5ARRAYERKS0_NS_12optional_idxE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %11, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 %i.cf)
          to label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i40 unwind label %bb.ac

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i40: ; preds = %bb.aa
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 2 uses
  %i.ch = load i8, ptr %11, align 8, !tbaa !23
  store i8 %i.ch, ptr %i.cg, align 8, !tbaa !23
  %i.ci = getelementptr inbounds nuw i8, ptr %11, i64 1
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !147
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 209
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !147
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 216 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.cn = load <2 x ptr>, ptr %i.cm, align 8, !tbaa !34
  %i.co = load <2 x ptr>, ptr %i.cl, align 8, !tbaa !34
  store <2 x ptr> %i.cn, ptr %i.cl, align 8, !tbaa !34
  store <2 x ptr> %i.co, ptr %i.cm, align 8, !tbaa !34
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.cp = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #21
          to label %.noexc unwind label %bb.ad    ; 4 uses

.noexc:                                           ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i40
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.cg)
          to label %_ZNSt10unique_ptrIN6duckdb22VariableReturnBindDataESt14default_deleteIS1_EED2Ev.exit unwind label %bb.ab, !noalias !162

bb.ab:                                            ; preds = %.noexc
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.cp) #19, !noalias !162
  br label %.body

_ZNSt10unique_ptrIN6duckdb22VariableReturnBindDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %.noexc
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb22VariableReturnBindDataE, i64 16), ptr %i.cp, align 8, !tbaa !49, !noalias !162
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, ptr noundef nonnull align 8 dereferenceable(24) %4) #20, !noalias !162, !inline_history !165
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #20, !noalias !162
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store ptr %i.cp, ptr %0, align 8, !tbaa !166
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  ret void

bb.ac:                                            ; preds = %bb.aa, %_ZN6duckdb11LogicalTypeaSERKS0_.exit
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ad:                                            ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i40
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ad, %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, %bb.p, %bb.ac, %bb.k
  %.pn26 = phi { ptr, i32 } [ %i.an, %bb.k ], [ %.pn52, %bb.p ], [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31 ], [ %i.cs, %bb.ac ], [ %i.ct, %bb.ad ], [ %i.cq, %bb.ab ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f, %.body
  %.pn28.pn = phi { ptr, i32 } [ %.pn2849, %bb.f ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn26, %.body ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn28.pn

bb.af:                                            ; preds = %bb.n, %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_115ArrayValueStatsERNS_13ClientContextERNS_23FunctionStatisticsInputE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.16") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::BaseStatistics", align 8 ; 9 uses
  %4 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !169, !nonnull !111, !align !112 ; 4 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !174, !nonnull !111, !align !112
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  call void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.d)
  invoke void @_ZN6duckdb10ArrayStats11CreateEmptyENS_11LogicalTypeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::BaseStatistics") align 8 %3, ptr noundef nonnull %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #20
  %i.e = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb10ArrayStats13GetChildStatsERNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128) %3)
          to label %.preheader unwind label %bb.d

.preheader:                                       ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !175
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !178
  %.not = icmp eq ptr %i.g, %i.h
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.f, %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 25
  store i8 1, ptr %i.i, align 1, !tbaa !179
  invoke void @_ZNK6duckdb14BaseStatistics8ToUniqueEv(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.16") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %3)
          to label %bb.h unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #20
  br label %bb.j

bb.d:                                             ; preds = %._crit_edge, %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.lr.ph:                                           ; preds = %.preheader, %bb.f
  %.015 = phi i64 [ %i.m, %bb.f ], [ 0, %.preheader ] ; 2 uses
  %i.l = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb6vectorINS_14BaseStatisticsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %.015)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %.lr.ph
  invoke void @_ZN6duckdb14BaseStatistics5MergeERKS0_(ptr noundef nonnull align 8 dereferenceable(128) %i.e, ptr noundef nonnull align 8 dereferenceable(128) %i.l)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = add nuw i64 %.015, 1                     ; 2 uses
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !175
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !178
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 7
  %i.t = icmp ult i64 %i.m, %i.s
  br i1 %i.t, label %.lr.ph, label %._crit_edge, !llvm.loop !189

bb.g:                                             ; preds = %bb.e, %.lr.ph
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void

bb.i:                                             ; preds = %bb.g, %bb.d
  %.pn = phi { ptr, i32 } [ %i.u, %bb.g ], [ %i.k, %bb.d ]
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %3) #20
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.i ], [ %i.j, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZN6duckdb14ScalarFunctionC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6vectorINS_11LogicalTypeELb1ESaIS8_EEES8_St8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEEPFNS_10unique_ptrINS_12FunctionDataESt14default_deleteISL_ELb1EEERNS_13ClientContextERS0_RNS7_INSK_INS_10ExpressionESM_ISS_ELb1EEELb1ESaISU_EEEEPFSO_RNS_23ScalarFunctionBindInputESR_SX_EPFNSK_INS_14BaseStatisticsESM_IS14_ELb1EEESQ_RNS_23FunctionStatisticsInputEEPFNSK_INS_18FunctionLocalStateESM_IS1B_ELb1EEESF_RKNS_23BoundFunctionExpressionEPSL_ES8_NS_17FunctionStabilityENS_20FunctionNullHandlingEPFS8_SQ_RKSA_mE(ptr noundef nonnull align 8 dereferenceable(360), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) unnamed_addr #2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #20 ; 0 uses
  tail call void @_ZSt9terminatev() #23
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #9

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #10

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #11

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

declare void @__cxa_rethrow() local_unnamed_addr

end_hunk_0
