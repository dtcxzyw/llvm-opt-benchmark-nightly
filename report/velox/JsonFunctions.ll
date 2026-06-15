inline.NumInlined: 16951
inline.NumDeleted: 7027
begin_hunk_0_@_ZNK8facebook5velox9functions12_GLOBAL__N_113JsonParseImpl5applyERKNS0_17SelectivityVectorERKSt10shared_ptrINS0_10BaseVectorEERKS7_IKNS0_4TypeEERNS0_4exec7EvalCtxERS9_b:bb.a

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.hv
  %lpad.loopexit.split-lp61 = landingpad { ptr, i32 }
          cleanup
  br label %.body347

bb.lr:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit354
  %i.azc = landingpad { ptr, i32 }
          cleanup
  br label %bb.lt

bb.ls:                                            ; preds = %_ZSt10_ConstructIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i359
  %i.azd = landingpad { ptr, i32 }
          cleanup
  br label %.body365

.body365:                                         ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox10FlatVectorINS2_10StringViewEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit14.i.i.i.i363, %bb.ls
  %eh.lpad-body366 = phi { ptr, i32 } [ %i.azd, %bb.ls ], [ %i.atf, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox10FlatVectorINS2_10StringViewEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit14.i.i.i.i363 ]
  call void @_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %57) #26
  br label %bb.lt

bb.lt:                                            ; preds = %.body365, %bb.lr
  %.pn118 = phi { ptr, i32 } [ %eh.lpad-body366, %.body365 ], [ %i.azc, %bb.lr ]
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %58) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #26
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %56) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #26
  call void @_ZNSt12__shared_ptrIKN8facebook5velox8JsonTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %55) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #26
  br label %.body347

.body347:                                         ; preds = %bb.jh, %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %bb.jx, %bb.lt
  %.pn118.pn.pn.pn = phi { ptr, i32 } [ %.pn118, %bb.lt ], [ %lpad.loopexit.split-lp61, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn47.pn.pn.i.i.i.i.i.i, %bb.jx ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit48, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit51, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit54, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit57, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit60, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.pn42.i.i.i.i.i.i, %bb.jh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #26
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %53) #26
  br label %bb.lu

bb.lu:                                            ; preds = %.body347, %bb.lq
  %.pn118.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn118.pn.pn.pn, %.body347 ], [ %i.azb, %bb.lq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #26
  br label %.body262

.body262:                                         ; preds = %.loopexit63, %.loopexit.split-lp64.loopexit.split-lp.loopexit, %.loopexit.split-lp64.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp64.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp64.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp64.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp64.loopexit, %.loopexit.i.i.i.i, %.loopexit18.i.i.i.i.i, %bb.lu
  %.pn118.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn118.pn.pn.pn.pn, %bb.lu ], [ %.merged.i.i.i.i.i, %.loopexit.i.i.i.i ], [ %.merged.i.i.i.i.i.i, %.loopexit18.i.i.i.i.i ], [ %lpad.loopexit65, %.loopexit63 ], [ %lpad.loopexit68, %.loopexit.split-lp64.loopexit ], [ %lpad.loopexit71, %.loopexit.split-lp64.loopexit.split-lp.loopexit ], [ %lpad.loopexit76, %.loopexit.split-lp64.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit79, %.loopexit.split-lp64.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit82, %.loopexit.split-lp64.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp83, %.loopexit.split-lp64.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %52) #26
  br label %bb.lv

bb.lv:                                            ; preds = %.body262, %bb.lp
  %.pn118.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn118.pn.pn.pn.pn.pn, %.body262 ], [ %i.aza, %bb.lp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #26
  %i.aze = load ptr, ptr %51, align 8, !tbaa !200 ; 2 uses
  %.not.i.i432 = icmp eq ptr %i.aze, null
  br i1 %.not.i.i432, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit433, label %bb.lw

bb.lw:                                            ; preds = %bb.lv
  %i.azf = load ptr, ptr %i.ue, align 8, !tbaa !116 ; 2 uses
  %i.azg = ptrtoint ptr %i.azf to i64
  %i.azh = ptrtoint ptr %i.aze to i64
  %i.azi = sub i64 %i.azg, %i.azh                 ; 2 uses
  %i.azj = ashr exact i64 %i.azi, 3
  %i.azk = sub nsw i64 0, %i.azj
  %i.azl = getelementptr inbounds [8 x i8], ptr %i.azf, i64 %i.azk
  call void @_ZdlPvm(ptr noundef %i.azl, i64 noundef %i.azi) #47
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit433

_ZNSt13_Bvector_baseISaIbEED2Ev.exit433:          ; preds = %bb.lw, %bb.lv, %bb.lo
  %.pn118.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ayz, %bb.lo ], [ %.pn118.pn.pn.pn.pn.pn.pn, %bb.lv ], [ %.pn118.pn.pn.pn.pn.pn.pn, %bb.lw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  br label %bb.lx

bb.lx:                                            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit433, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241, %bb.ff
  %.pn127.pn = phi { ptr, i32 } [ %.pn127, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241 ], [ %.pn118.pn.pn.pn.pn.pn.pn.pn, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit433 ], [ %i.ts, %bb.ff ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %48) #26
  br label %bb.ly

bb.ly:                                            ; preds = %bb.lx, %bb.fe
  %.pn127.pn.pn = phi { ptr, i32 } [ %.pn127.pn, %bb.lx ], [ %i.tr, %bb.fe ]
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  br label %bb.lz

bb.lz:                                            ; preds = %bb.ly, %bb.ew
  %.pn127.pn.pn.pn = phi { ptr, i32 } [ %.pn127.pn.pn, %bb.ly ], [ %i.sv, %bb.ew ]
  call void @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %47) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #26
  br label %bb.ma

bb.ma:                                            ; preds = %bb.lz, %.body
  %.merged = phi { ptr, i32 } [ %.merged139, %.body ], [ %.pn127.pn.pn.pn, %bb.lz ]
  resume { ptr, i32 } %.merged

bb.mb:                                            ; preds = %bb.cp
  %i.azm = landingpad { ptr, i32 }
          catch ptr null
  %i.azn = extractvalue { ptr, i32 } %i.azm, 0
  call void @__clang_call_terminate(ptr %i.azn) #48
  unreachable

bb.mc:                                            ; preds = %.loopexit87
  unreachable
}

declare void @_ZN8facebook5velox4exec7EvalCtx8addNullsERKNS0_17SelectivityVectorEPKmRS2_RKSt10shared_ptrIKNS0_4TypeEERS9_INS0_10BaseVectorEE(ptr noundef nonnull align 8 dereferenceable(38), ptr noundef, ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox4exec20MutableRemainingRowsD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  %i.c = ptrtoint ptr %i.b to i64
  br i1 %.not.i, label %_ZN8facebook5velox4exec22LocalSelectivityVectorD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2192, !nonnull !27, !align !592 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i8, ptr %i.f, align 8, !tbaa !2193, !range !26, !noundef !27
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit.thread.i

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2194 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !2195
  %.not.i.i.i.i = icmp eq ptr %i.j, %i.l
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %i.c, ptr %i.j, align 8, !tbaa !2196
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.m, ptr %i.i, align 8, !tbaa !2194
  br label %_ZN8facebook5velox4exec22LocalSelectivityVectorD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  invoke void @_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit.i unwind label %bb.g

_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit.i: ; preds = %bb.e
  %.pr.pre.i = load ptr, ptr %i.a, align 8, !tbaa !2196 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i, label %_ZN8facebook5velox4exec22LocalSelectivityVectorD2Ev.exit, label %_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit.thread.i

_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit.thread.i: ; preds = %_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit.i, %bb.b
  %.pr7.i = phi ptr [ %.pr.pre.i, %_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit.i ], [ %i.b, %bb.b ] ; 3 uses
  %i.o = load ptr, ptr %.pr7.i, align 8, !tbaa !392 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN8facebook5velox17SelectivityVectorEEclEPS2_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit.thread.i
  %i.p = getelementptr inbounds nuw i8, ptr %.pr7.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !393
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #47
  br label %_ZNKSt14default_deleteIN8facebook5velox17SelectivityVectorEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN8facebook5velox17SelectivityVectorEEclEPS2_.exit.i.i: ; preds = %bb.f, %_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit.thread.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.pr7.i, i64 noundef 40) #47
  br label %_ZN8facebook5velox4exec22LocalSelectivityVectorD2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #48
  unreachable

_ZN8facebook5velox4exec22LocalSelectivityVectorD2Ev.exit: ; preds = %bb.a, %bb.d, %_ZN8facebook5velox4core7ExecCtx24releaseSelectivityVectorEOSt10unique_ptrINS0_17SelectivityVectorESt14default_deleteIS4_EE.exit.i, %_ZNKSt14default_deleteIN8facebook5velox17SelectivityVectorEEclEPS2_.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZN8facebook5velox9functions12_GLOBAL__N_115JsonExtractImpl7processERKNS0_10StringViewES6_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.simdjson::simdjson_result.84", align 8 ; 8 uses
  %4 = alloca %"struct.simdjson::simdjson_result.96", align 8 ; 8 uses
  %5 = alloca %"struct.simdjson::simdjson_result.114", align 8 ; 6 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  %7 = alloca %"struct.simdjson::simdjson_result.114", align 8 ; 6 uses
  %8 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  %9 = alloca %"struct.simdjson::simdjson_result.114", align 8 ; 7 uses
  %10 = alloca %"class.simdjson::fallback::ondemand::value", align 8 ; 7 uses
  %11 = alloca %"class.std::vector.640", align 8  ; 25 uses
  %12 = alloca %class.anon.679, align 8           ; 5 uses
  %i.a = alloca i8, align 1                       ; 8 uses
  %13 = alloca %"struct.simdjson::simdjson_result", align 8 ; 10 uses
  %14 = alloca %"class.simdjson::padded_string_view", align 8 ; 7 uses
  %15 = alloca %"class.simdjson::fallback::ondemand::document", align 8 ; 24 uses
  %16 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 23 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  store ptr %11, ptr %12, align 8, !tbaa !2325
  %i.b = load i32, ptr %1, align 8, !tbaa !477    ; 2 uses
  %i.c = icmp ult i32 %i.b, 13
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = select i1 %i.c, ptr %i.d, ptr %i.f
  %i.h = zext i32 %i.b to i64
  %i.i = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN8facebook5velox9functions17SIMDJsonExtractor11getInstanceESt17basic_string_viewIcSt11char_traitsIcEE(i64 %i.h, ptr %i.g)
          to label %bb.b unwind label %bb.e       ; 3 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i8 1, ptr %i.a, align 1, !tbaa !74
  %i.j = load i32, ptr %0, align 8, !tbaa !477    ; 2 uses
  %i.k = icmp ult i32 %i.j, 13
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = select i1 %i.k, ptr %i.l, ptr %i.n       ; 2 uses
  %i.p = zext i32 %i.j to i64                     ; 5 uses
  %i.q = add nuw nsw i64 %i.p, 64
  %i.r = call noalias noundef ptr @_ZnamRKSt9nothrow_t(i64 noundef %i.q, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #54 ; 6 uses
  %i.s = icmp eq ptr %i.r, null                   ; 3 uses
  br i1 %i.s, label %_ZN8simdjson13padded_stringC2EPKcm.exit, label %_ZN8simdjson8internal22allocate_padded_bufferEm.exit.i

_ZN8simdjson8internal22allocate_padded_bufferEm.exit.i: ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.t, i8 0, i64 64, i1 false)
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZN8simdjson13padded_stringC2EPKcm.exit, label %bb.c

bb.c:                                             ; preds = %_ZN8simdjson8internal22allocate_padded_bufferEm.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull align 1 %i.o, i64 %i.p, i1 false)
  br label %_ZN8simdjson13padded_stringC2EPKcm.exit

_ZN8simdjson13padded_stringC2EPKcm.exit:          ; preds = %bb.b, %_ZN8simdjson8internal22allocate_padded_bufferEm.exit.i, %bb.c
  %.sroa.0.0 = phi i64 [ %i.p, %bb.c ], [ %i.p, %_ZN8simdjson8internal22allocate_padded_bufferEm.exit.i ], [ 0, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.u = add nuw nsw i64 %.sroa.0.0, 64
  store i64 %.sroa.0.0, ptr %14, align 8, !tbaa !93, !alias.scope !2327
  %i.v = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.r, ptr %i.v, align 8, !tbaa !95, !alias.scope !2327
  %i.w = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 %i.u, ptr %i.w, align 8, !tbaa !96, !alias.scope !2327
  invoke void @_ZN8facebook5velox13simdjsonParseERKN8simdjson18padded_string_viewE(ptr dead_on_unwind nonnull writable sret(%"struct.simdjson::simdjson_result") align 8 %13, ptr noundef nonnull align 8 dereferenceable(24) %14)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZN8simdjson13padded_stringC2EPKcm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 56
  %i.y = load i32, ptr %i.x, align 8, !tbaa !98   ; 2 uses
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %bb.g, label %bb.bw

bb.e:                                             ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.f:                                             ; preds = %_ZN8simdjson13padded_stringC2EPKcm.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %bb.bz

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %15, ptr noundef nonnull align 8 dereferenceable(56) %13, i64 16, i1 false), !tbaa.struct !101
  %i.ab = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 11 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ad = load <2 x ptr>, ptr %i.ac, align 8, !tbaa !102
  store <2 x ptr> %i.ad, ptr %i.ab, align 8, !tbaa !102
  %i.ae = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %15, i64 36 ; 8 uses
  %i.ah = load <2 x i32>, ptr %i.af, align 8, !tbaa !20
  store <2 x i32> %i.ah, ptr %i.ae, align 8, !tbaa !20
  %i.ai = getelementptr inbounds nuw i8, ptr %15, i64 40 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !7
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %15, i64 48 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %13, i64 48
  %i.an = load i8, ptr %i.am, align 8, !tbaa !25, !range !26, !noundef !27
  store i8 %i.an, ptr %i.al, align 8, !tbaa !25
  store ptr null, ptr %i.ac, align 8, !tbaa !28
  %i.ao = call noundef i32 @_ZN8facebook5velox9functions16jsonParsingErrorERN8simdjson8fallback8ondemand8documentE(ptr noundef nonnull align 8 dereferenceable(56) %15) ; 2 uses
  %.not38 = icmp eq i32 %i.ao, 0
  br i1 %.not38, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit

bb.h:                                             ; preds = %bb.g
  %i.ap = load ptr, ptr %i.ai, align 8, !tbaa !7, !noalias !2330 ; 8 uses
  %i.aq = load ptr, ptr %15, align 8, !tbaa !19   ; 16 uses
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !3
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !20  ; 2 uses
  %i.av = add i8 %i.au, -91
  %switch.and.i = and i8 %i.av, -33
  %switch.selectcmp.not.i = icmp eq i8 %switch.and.i, 0
  br i1 %switch.selectcmp.not.i, label %bb.ao, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = load ptr, ptr %i.i, align 8, !tbaa !2333 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !2333
  %i.az = icmp eq ptr %i.aw, %i.ay
  br i1 %i.az, label %bb.j, label %bb.am

bb.j:                                             ; preds = %bb.i
  switch i8 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit [
    i8 123, label %bb.k
    i8 91, label %bb.t
    i8 34, label %bb.ac
    i8 110, label %bb.ai
    i8 116, label %bb.ac
    i8 102, label %bb.ac
    i8 45, label %bb.ac
    i8 48, label %bb.ac
    i8 49, label %bb.ac
    i8 50, label %bb.ac
    i8 51, label %bb.ac
    i8 52, label %bb.ac
    i8 53, label %bb.ac
    i8 54, label %bb.ac
    i8 55, label %bb.ac
    i8 56, label %bb.ac
    i8 57, label %bb.ac
  ]

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.ba = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 4 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !21, !noalias !2335 ; 4 uses
  %i.bc = icmp eq ptr %i.bb, %i.ap
  br i1 %i.bc, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bd = load i32, ptr %i.bb, align 4, !tbaa !3, !noalias !2335
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !20, !noalias !2335
  %.not8.i.i.i.i = icmp eq i8 %i.bg, 123
  br i1 %.not8.i.i.i.i, label %bb.m, label %_ZN8simdjson14to_json_stringENS_15simdjson_resultINS_8fallback8ondemand6objectEEE.exit.thread.i.i

bb.m:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 4 ; 2 uses
  store ptr %i.bh, ptr %i.ba, align 8, !tbaa !21, !noalias !2335
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %i.bi = phi ptr [ %i.bh, %bb.m ], [ %i.bb, %bb.k ] ; 2 uses
  %i.bj = load i8, ptr %i.al, align 8, !tbaa !25, !range !26, !noalias !2335, !noundef !27
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bl = load ptr, ptr %i.ab, align 8, !tbaa !28, !noalias !2335
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !29, !noalias !2335 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !31, !noalias !2335 ; 3 uses
  %i.bq = icmp ne i32 %i.bp, 0
  call void @llvm.assume(i1 %i.bq), !noalias !2335
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bs = add i32 %i.bp, -1
  %i.bt = zext i32 %i.bs to i64
  %i.bu = load ptr, ptr %i.br, align 8, !tbaa !40, !noalias !2335 ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.bt
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !3, !noalias !2335
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !20, !noalias !2335
  %.not.i40.i.i = icmp eq i8 %i.bz, 125
  br i1 %.not.i40.i.i, label %bb.p, label %_ZN8simdjson14to_json_stringENS_15simdjson_resultINS_8fallback8ondemand6objectEEE.exit.thread.sink.split.i.i

bb.p:                                             ; preds = %bb.o
  %i.ca = zext i32 %i.bp to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3, !noalias !2335
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !20, !noalias !2335
  %i.cg = icmp eq i8 %i.cf, 125
  br i1 %i.cg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ch = call noundef zeroext i1 @_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv(ptr noundef nonnull align 8 dereferenceable(56) %15) #26, !noalias !2335
  br i1 %i.ch, label %._crit_edge252.i.i, label %_ZN8simdjson14to_json_stringENS_15simdjson_resultINS_8fallback8ondemand6objectEEE.exit.thread.sink.split.i.i

._crit_edge252.i.i:                               ; preds = %bb.q
  %.pre253.i.i = load ptr, ptr %i.ba, align 8, !tbaa !43, !noalias !2335
  %.pre254.i.i = load ptr, ptr %15, align 8, !tbaa !19, !noalias !2335
  br label %bb.r

end_hunk_0
begin_hunk_1_@_ZN8facebook5velox9functions12_GLOBAL__N_115JsonExtractImpl7processERKNS0_10StringViewES6_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.in = icmp eq i8 %i.im, 125
  br i1 %i.in, label %bb.az, label %_ZN8simdjson8fallback8ondemand8document9get_valueEv.exit.i

bb.az:                                            ; preds = %bb.ay
  %i.io = call noundef zeroext i1 @_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv(ptr noundef nonnull align 8 dereferenceable(56) %15) #26, !noalias !2357
  br i1 %i.io, label %_ZN8simdjson8fallback8ondemand8document9get_valueEv.exit.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store ptr null, ptr %i.ab, align 8, !tbaa !28, !noalias !2357
  store i32 0, ptr %i.ag, align 4, !tbaa !41, !noalias !2357
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit

_ZN8simdjson8fallback8ondemand8document9get_valueEv.exit.i: ; preds = %bb.az, %bb.ay, %bb.av, %bb.at, %bb.as, %bb.ap
  %.sroa.0.sroa.10.2.i = load ptr, ptr %i.ai, align 8, !tbaa !7, !noalias !2357
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  store ptr %15, ptr %10, align 8, !tbaa !50
  %.sroa.0.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 1, ptr %.sroa.0.sroa.8.0..sroa_idx.i, align 8, !tbaa !3
  %.sroa.0.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 0, ptr %.sroa.0.sroa.9.0..sroa_idx.i, align 4
  %.sroa.0.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %.sroa.0.sroa.10.2.i, ptr %.sroa.0.sroa.10.0..sroa_idx.i, align 8, !tbaa !40
  %i.ip = invoke fastcc noundef i32 @_ZN8facebook5velox9functions17SIMDJsonExtractor15extractInternalIZNS1_12_GLOBAL__N_115JsonExtractImpl7processERKNS0_10StringViewES8_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlRT_E_EEN8simdjson10error_codeERNSJ_8fallback8ondemand5valueESH_Rbm(ptr noundef nonnull readonly align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull readonly align 8 dereferenceable(8) %12, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 noundef 0)
          to label %_ZN8facebook5velox9functions17SIMDJsonExtractor7extractIZNS1_12_GLOBAL__N_115JsonExtractImpl7processERKNS0_10StringViewES8_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlRT_E_EEN8simdjson10error_codeERNSJ_8fallback8ondemand8documentESH_Rb.exit unwind label %bb.bb ; 2 uses

_ZN8facebook5velox9functions17SIMDJsonExtractor7extractIZNS1_12_GLOBAL__N_115JsonExtractImpl7processERKNS0_10StringViewES8_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlRT_E_EEN8simdjson10error_codeERNSJ_8fallback8ondemand8documentESH_Rb.exit: ; preds = %_ZN8simdjson8fallback8ondemand8document9get_valueEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %.not39 = icmp eq i32 %i.ip, 0
  br i1 %.not39, label %_ZN8facebook5velox9functions17SIMDJsonExtractor7extractIZNS1_12_GLOBAL__N_115JsonExtractImpl7processERKNS0_10StringViewES8_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlRT_E_EEN8simdjson10error_codeERNSJ_8fallback8ondemand8documentESH_Rb.exit.thread73, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit

bb.bb:                                            ; preds = %.invoke, %_ZN8simdjson8fallback8ondemand8document9get_valueEv.exit.i, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i, %.thread244.i.i, %.thread230.i.i
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

_ZN8facebook5velox9functions17SIMDJsonExtractor7extractIZNS1_12_GLOBAL__N_115JsonExtractImpl7processERKNS0_10StringViewES8_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlRT_E_EEN8simdjson10error_codeERNSJ_8fallback8ondemand8documentESH_Rb.exit.thread73: ; preds = %.noexc48, %.thread246.i.i, %.noexc, %bb.an, %bb.aj, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i, %bb.am, %_ZN8facebook5velox9functions17SIMDJsonExtractor7extractIZNS1_12_GLOBAL__N_115JsonExtractImpl7processERKNS0_10StringViewES8_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlRT_E_EEN8simdjson10error_codeERNSJ_8fallback8ondemand8documentESH_Rb.exit
  %i.ir = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !2344
  %i.it = load ptr, ptr %11, align 8, !tbaa !2211
  %i.iu = icmp eq ptr %i.is, %i.it
  br i1 %i.iu, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %_ZN8facebook5velox9functions17SIMDJsonExtractor7extractIZNS1_12_GLOBAL__N_115JsonExtractImpl7processERKNS0_10StringViewES8_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlRT_E_EEN8simdjson10error_codeERNSJ_8fallback8ondemand8documentESH_Rb.exit.thread73
  %i.iv = load i8, ptr %i.a, align 1, !tbaa !74, !range !26, !noundef !27
  %i.iw = trunc nuw i8 %i.iv to i1
  br i1 %i.iw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ix = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !123
  %i.iz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %i.iy, ptr noundef nonnull @.str.223, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit unwind label %bb.be ; 0 uses

bb.be:                                            ; preds = %bb.bd
  %i.ja = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bf:                                            ; preds = %_ZN8facebook5velox9functions17SIMDJsonExtractor7extractIZNS1_12_GLOBAL__N_115JsonExtractImpl7processERKNS0_10StringViewES8_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlRT_E_EEN8simdjson10error_codeERNSJ_8fallback8ondemand8documentESH_Rb.exit.thread73
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %16)
          to label %bb.bg unwind label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.jb = load i8, ptr %i.a, align 1, !tbaa !74, !range !26, !noundef !27
  %i.jc = trunc nuw i8 %i.jb to i1                ; 2 uses
  br i1 %i.jc, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.jd = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.je = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jd, ptr noundef nonnull @.str.160, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.bj ; 0 uses

bb.bi:                                            ; preds = %bb.bf
  %i.jf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.bj:                                            ; preds = %bb.bk, %bb.bh
  %i.jg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.bh, %bb.bg
  %i.jh = load ptr, ptr %i.ir, align 8, !tbaa !2344
  %i.ji = load ptr, ptr %11, align 8, !tbaa !2211 ; 3 uses
  %.not79 = icmp eq ptr %i.jh, %i.ji
  br i1 %.not79, label %._crit_edge, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57.peel

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.jj = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  %.sroa.2.0..sroa_idx.peel.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %.sroa.2.0.copyload.peel.pre = load ptr, ptr %.sroa.2.0..sroa_idx.peel.phi.trans.insert, align 8, !tbaa !79
  %.sroa.0.0.copyload.peel.pre = load i64, ptr %i.ji, align 8, !tbaa !75
  %i.jk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jj, ptr noundef %.sroa.2.0.copyload.peel.pre, i64 noundef %.sroa.0.0.copyload.peel.pre)
          to label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit.peel unwind label %.loopexit.split-lp ; 0 uses

_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57.peel
  %i.jl = load ptr, ptr %i.ir, align 8, !tbaa !2344
  %i.jm = load ptr, ptr %11, align 8, !tbaa !2211
  %i.jn = ptrtoint ptr %i.jl to i64
  %i.jo = ptrtoint ptr %i.jm to i64
  %i.jp = sub i64 %i.jn, %i.jo
  %i.jq = icmp ugt i64 %i.jp, 16
  br i1 %i.jq, label %.peel.next, label %._crit_edge

._crit_edge:                                      ; preds = %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit, %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit.peel, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  br i1 %i.jc, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60, label %bb.bk

.peel.next:                                       ; preds = %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit.peel, %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit ], [ 1, %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit.peel ] ; 2 uses
  %i.jr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jj, ptr noundef nonnull @.str.224, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57 unwind label %.loopexit ; 0 uses

.loopexit:                                        ; preds = %.peel.next, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

.loopexit.split-lp:                               ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57.peel
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57: ; preds = %.peel.next
  %.pre = load ptr, ptr %11, align 8, !tbaa !2211
  %.phi.trans.insert = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %indvars.iv ; 2 uses
  %.sroa.2.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 8
  %.sroa.2.0.copyload.pre = load ptr, ptr %.sroa.2.0..sroa_idx.phi.trans.insert, align 8, !tbaa !79
  %.sroa.0.0.copyload.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !75
  %i.js = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jj, ptr noundef %.sroa.2.0.copyload.pre, i64 noundef %.sroa.0.0.copyload.pre)
          to label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit unwind label %.loopexit ; 0 uses

_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.jt = load ptr, ptr %i.ir, align 8, !tbaa !2344
  %i.ju = load ptr, ptr %11, align 8, !tbaa !2211
  %i.jv = ptrtoint ptr %i.jt to i64
  %i.jw = ptrtoint ptr %i.ju to i64
  %i.jx = sub i64 %i.jv, %i.jw
  %i.jy = ashr exact i64 %i.jx, 4
  %i.jz = icmp ugt i64 %i.jy, %indvars.iv.next
  br i1 %i.jz, label %.peel.next, label %._crit_edge, !llvm.loop !2360

bb.bk:                                            ; preds = %._crit_edge
  %i.ka = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.kb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ka, ptr noundef nonnull @.str.164, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60 unwind label %bb.bj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60: ; preds = %bb.bk, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !2362)
  call void @llvm.experimental.noalias.scope.decl(metadata !2365)
  %i.kc = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 10 uses
  store ptr %i.kc, ptr %17, align 8, !tbaa !121, !alias.scope !2368
  %i.kd = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 6 uses
  store i64 0, ptr %i.kd, align 8, !tbaa !123, !alias.scope !2368
  store i8 0, ptr %i.kc, align 8, !tbaa !20, !alias.scope !2368
  %i.ke = getelementptr inbounds nuw i8, ptr %16, i64 64
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !561, !noalias !2368 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.kf, null
  %i.kg = getelementptr inbounds nuw i8, ptr %16, i64 48
  %i.kh = load ptr, ptr %i.kg, align 8, !noalias !2368 ; 2 uses
  %i.ki = icmp ugt ptr %i.kf, %i.kh
  %.08.i.i.i = select i1 %i.ki, ptr %i.kf, ptr %i.kh ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60
  %i.kj = getelementptr inbounds nuw i8, ptr %16, i64 56
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !565, !noalias !2368 ; 2 uses
  %i.kl = ptrtoint ptr %.08.i.i.i to i64
  %i.km = ptrtoint ptr %i.kk to i64
  %i.kn = sub i64 %i.kl, %i.km
  %i.ko = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef 0, i64 noundef 0, ptr noundef %i.kk, i64 noundef %i.kn)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.bm ; 0 uses

bb.bm:                                            ; preds = %bb.bn, %bb.bl
  %i.kp = landingpad { ptr, i32 }
          cleanup
  %i.kq = load ptr, ptr %17, align 8, !tbaa !137, !alias.scope !2368 ; 2 uses
  %i.kr = icmp eq ptr %i.kq, %i.kc
  br i1 %i.kr, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.bm
  %i.ks = load i64, ptr %i.kc, align 8, !tbaa !20, !alias.scope !2368
  %i.kt = add i64 %i.ks, 1
  call void @_ZdlPvm(ptr noundef %i.kq, i64 noundef %i.kt) #47
  br label %.body

bb.bn:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60
  %i.ku = getelementptr inbounds nuw i8, ptr %16, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %i.ku)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.bm

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.bn, %bb.bl
  %i.kv = load ptr, ptr %2, align 8, !tbaa !137   ; 6 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.kx = icmp eq ptr %i.kv, %i.kw
  %i.ky = load ptr, ptr %17, align 8, !tbaa !137  ; 6 uses
  %i.kz = icmp eq ptr %i.ky, %i.kc                ; 2 uses
  br i1 %i.kx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.kz, label %bb.bo, label %.thread.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.kz, label %bb.bo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.bo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.la = load i64, ptr %i.kd, align 8, !tbaa !123 ; 3 uses
  %i.lb = icmp ult i64 %i.la, 16
  call void @llvm.assume(i1 %i.lb)
  %.not21.i = icmp eq ptr %17, %2
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %18, !prof !71

18:                                               ; preds = %bb.bo
  switch i64 %i.la, label %bb.bq [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.bp
  ]

bb.bp:                                            ; preds = %18
  %i.lc = load i8, ptr %i.ky, align 1, !tbaa !20
  store i8 %i.lc, ptr %i.kv, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.bq:                                            ; preds = %18
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kv, ptr align 1 %i.ky, i64 %i.la, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.bq, %bb.bp, %18
  %i.ld = load i64, ptr %i.kd, align 8, !tbaa !123 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ld, ptr %i.le, align 8, !tbaa !123
  %i.lf = load ptr, ptr %2, align 8, !tbaa !137
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.ld
  store i8 0, ptr %i.lg, align 1, !tbaa !20
  %.pre.i = load ptr, ptr %17, align 8, !tbaa !137
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i62:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.lh = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ky, ptr %2, align 8, !tbaa !137
  %i.li = load <2 x i64>, ptr %i.kd, align 8, !tbaa !20
  store <2 x i64> %i.li, ptr %i.lh, align 8, !tbaa !20
  br label %bb.bs

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.lj = load i64, ptr %i.kw, align 8, !tbaa !20
  store ptr %i.ky, ptr %2, align 8, !tbaa !137
  %i.lk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ll = load <2 x i64>, ptr %i.kd, align 8, !tbaa !20
  store <2 x i64> %i.ll, ptr %i.lk, align 8, !tbaa !20
  %.not.i61 = icmp eq ptr %i.kv, null
  br i1 %.not.i61, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.kv, ptr %17, align 8, !tbaa !137
  store i64 %i.lj, ptr %i.kc, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.bs:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i62
  store ptr %i.kc, ptr %17, align 8, !tbaa !137
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.br, %bb.bs
  %19 = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.kv, %bb.br ], [ %i.kc, %bb.bs ], [ %i.ky, %bb.bo ]
  store i64 0, ptr %i.kd, align 8, !tbaa !123
  store i8 0, ptr %19, align 1, !tbaa !20
  %i.lm = load ptr, ptr %17, align 8, !tbaa !137  ; 2 uses
  %i.ln = icmp eq ptr %i.lm, %i.kc
  br i1 %i.ln, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.lo = load i64, ptr %i.kc, align 8, !tbaa !20
  %i.lp = add i64 %i.lo, 1
  call void @_ZdlPvm(ptr noundef %i.lm, i64 noundef %i.lp) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  %i.lq = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.lq, ptr %16, align 8, !tbaa !83
  %i.lr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ls = getelementptr i8, ptr %i.lq, i64 -24
  %i.lt = load i64, ptr %i.ls, align 8
  %i.lu = getelementptr inbounds i8, ptr %16, i64 %i.lt
  store ptr %i.lr, ptr %i.lu, align 8, !tbaa !83
  %i.lv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.lw = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr %i.lv, ptr %i.lw, align 8, !tbaa !83
  %i.lx = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.lx, align 8, !tbaa !83
  %i.ly = getelementptr inbounds nuw i8, ptr %16, i64 96
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !137 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %16, i64 112 ; 2 uses
  %i.mb = icmp eq ptr %i.lz, %i.ma
  br i1 %i.mb, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.mc = load i64, ptr %i.ma, align 8, !tbaa !20
  %i.md = add i64 %i.mc, 1
  call void @_ZdlPvm(ptr noundef %i.lz, i64 noundef %i.md) #47
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.lx, align 8, !tbaa !83
  %i.me = getelementptr inbounds nuw i8, ptr %16, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.me) #26
  %i.mf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.mf, ptr %16, align 8, !tbaa !83
  %i.mg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.mh = getelementptr i8, ptr %i.mf, i64 -24
  %i.mi = load i64, ptr %i.mh, align 8
  %i.mj = getelementptr inbounds i8, ptr %16, i64 %i.mi
  store ptr %i.mg, ptr %i.mj, align 8, !tbaa !83
  %i.mk = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 0, ptr %i.mk, align 8, !tbaa !566
  %i.ml = getelementptr inbounds nuw i8, ptr %16, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ml) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit

.body:                                            ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %bb.bt

bb.bt:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.body, %bb.bj
  %.pn = phi { ptr, i32 } [ %i.jg, %bb.bj ], [ %i.kp, %.body ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %16) #26
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bi
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.bt ], [ %i.jf, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %bb.bv

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit: ; preds = %bb.ar, %bb.au, %bb.ba, %bb.ao, %_ZN8simdjson14to_json_stringENS_15simdjson_resultINS_8fallback8ondemand6objectEEE.exit.thread.i.i, %bb.ah, %_ZN8simdjson14to_json_stringENS_15simdjson_resultINS_8fallback8ondemand5arrayEEE.exit.thread.i.i, %bb.j, %bb.ax, %bb.bd, %bb.bc, %_ZN8facebook5velox9functions17SIMDJsonExtractor7extractIZNS1_12_GLOBAL__N_115JsonExtractImpl7processERKNS0_10StringViewES8_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlRT_E_EEN8simdjson10error_codeERNSJ_8fallback8ondemand8documentESH_Rb.exit, %bb.g, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %.2 = phi i32 [ %i.ao, %bb.g ], [ 20, %bb.bc ], [ 0, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ %i.ip, %_ZN8facebook5velox9functions17SIMDJsonExtractor7extractIZNS1_12_GLOBAL__N_115JsonExtractImpl7processERKNS0_10StringViewES8_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlRT_E_EEN8simdjson10error_codeERNSJ_8fallback8ondemand8documentESH_Rb.exit ], [ 0, %bb.bd ], [ 28, %bb.ar ], [ 28, %bb.au ], [ 28, %bb.ba ], [ 29, %bb.ao ], [ %i.cs, %_ZN8simdjson14to_json_stringENS_15simdjson_resultINS_8fallback8ondemand6objectEEE.exit.thread.i.i ], [ %i.en, %bb.ah ], [ %i.el, %_ZN8simdjson14to_json_stringENS_15simdjson_resultINS_8fallback8ondemand5arrayEEE.exit.thread.i.i ], [ 17, %bb.j ], [ 28, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bu, %bb.be, %bb.bb
  %.pn43 = phi { ptr, i32 } [ %i.ja, %bb.be ], [ %.pn.pn, %bb.bu ], [ %i.iq, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.bz

bb.bw:                                            ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit
  %.3 = phi i32 [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit ], [ %i.y, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br i1 %i.s, label %_ZN8simdjson13padded_stringD2Ev.exit, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @_ZdaPv(ptr noundef nonnull %i.r) #47
  br label %_ZN8simdjson13padded_stringD2Ev.exit

_ZN8simdjson13padded_stringD2Ev.exit:             ; preds = %bb.bw, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.mm = load ptr, ptr %11, align 8, !tbaa !2211 ; 3 uses
  %.not.i.i.i63 = icmp eq ptr %i.mm, null
  br i1 %.not.i.i.i63, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit, label %bb.by

bb.by:                                            ; preds = %_ZN8simdjson13padded_stringD2Ev.exit
  %i.mn = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !2214
  %i.mp = ptrtoint ptr %i.mo to i64
  %i.mq = ptrtoint ptr %i.mm to i64
  %i.mr = sub i64 %i.mp, %i.mq
  call void @_ZdlPvm(ptr noundef nonnull %i.mm, i64 noundef %i.mr) #47
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit: ; preds = %_ZN8simdjson13padded_stringD2Ev.exit, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  ret i32 %.3

bb.bz:                                            ; preds = %bb.bv, %bb.f
  %.pn43.pn = phi { ptr, i32 } [ %.pn43, %bb.bv ], [ %i.aa, %bb.f ]
  br i1 %i.s, label %_ZN8simdjson13padded_stringD2Ev.exit64, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @_ZdaPv(ptr noundef nonnull %i.r) #47
  br label %_ZN8simdjson13padded_stringD2Ev.exit64

_ZN8simdjson13padded_stringD2Ev.exit64:           ; preds = %bb.ca, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.cb

bb.cb:                                            ; preds = %_ZN8simdjson13padded_stringD2Ev.exit64, %bb.e
  %.pn43.pn.pn.pn = phi { ptr, i32 } [ %.pn43.pn, %_ZN8simdjson13padded_stringD2Ev.exit64 ], [ %i.z, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.ms = load ptr, ptr %11, align 8, !tbaa !2211 ; 3 uses
  %.not.i.i.i65 = icmp eq ptr %i.ms, null
  br i1 %.not.i.i.i65, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit66, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.mt = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !2214
  %i.mv = ptrtoint ptr %i.mu to i64
  %i.mw = ptrtoint ptr %i.ms to i64
  %i.mx = sub i64 %i.mv, %i.mw
  call void @_ZdlPvm(ptr noundef nonnull %i.ms, i64 noundef %i.mx) #47
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit66

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit66: ; preds = %bb.cb, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  resume { ptr, i32 } %.pn43.pn.pn.pn
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #36

declare void @_ZN8facebook5velox4exec7EvalCtx9setErrorsERKNS0_17SelectivityVectorERKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(38), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZSt17current_exceptionv(ptr dead_on_unwind writable sret(%"class.std::__exception_ptr::exception_ptr") align 8) local_unnamed_addr #15

declare void @_ZN8facebook5velox10BaseVector18createNullConstantERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.142") align 8, ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN8facebook5velox10BaseVector14createConstantERKSt10shared_ptrIKNS0_4TypeEENS0_7VariantEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.142") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox7VariantD2Ev(ptr noundef nonnull align 8 dead_on_return(10) dereferenceable(10) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.792, align 8            ; 4 uses
  %2 = alloca %class.anon.710, align 8            ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !2105   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN8facebook5velox7Variant11dynamicFreeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.c = load i8, ptr %i.b, align 1, !tbaa !2108, !range !26, !noundef !27
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store ptr %0, ptr %2, align 8, !tbaa !2109
  invoke void @_ZZN8facebook5velox7Variant11dynamicFreeEvENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc unwind label %bb.g, !inline_history !2369

.noexc:                                           ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %_ZN8facebook5velox7Variant11dynamicFreeEv.exit

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i8, ptr %i.e, align 8, !tbaa !2107
  switch i8 %i.f, label %bb.f [
    i8 33, label %_ZN8facebook5velox7Variant12typedDestroyILb0ELNS0_8TypeKindE33EEEvv.exit.i
    i8 35, label %bb.e
  ]

_ZN8facebook5velox7Variant12typedDestroyILb0ELNS0_8TypeKindE33EEEvv.exit.i: ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 1) #47, !inline_history !2370
  br label %_ZN8facebook5velox7Variant11dynamicFreeEv.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN8facebook5velox7Variant12typedDestroyILb0ELNS0_8TypeKindE35EEEvv(ptr noundef nonnull align 8 dereferenceable(10) %0), !inline_history !2370
  br label %_ZN8facebook5velox7Variant11dynamicFreeEv.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store ptr %0, ptr %1, align 8, !tbaa !2114
  invoke void @_ZZZN8facebook5velox7Variant11dynamicFreeEvENKUlvE0_clEvENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %.noexc2 unwind label %bb.g, !inline_history !2370

end_hunk_1
