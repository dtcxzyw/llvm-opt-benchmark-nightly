inline.NumInlined: 1432
inline.NumDeleted: 793
begin_hunk_0_@_ZN6duckdb15GetGroupsBufferERKNS_18RegexpBaseBindDataERNS_15ExpressionStateERNS_10unique_ptrINS_20RegexStringPieceArgsESt14default_deleteIS6_ELb1EEE:bb.a

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb10unique_ptrINS_20RegexStringPieceArgsESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.g, %bb.b ], [ %i.h, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb10unique_ptrINS_20RegexStringPieceArgsESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !195    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_20RegexStringPieceArgsESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !185

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !33     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_20RegexStringPieceArgsESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16RegexpExtractAll7ExecuteERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::optional_ptr", align 8 ; 5 uses
  %4 = alloca %"class.duckdb::optional_ptr", align 8 ; 5 uses
  %5 = alloca %"class.duckdb::optional_ptr", align 8 ; 5 uses
  %6 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %7 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %8 = alloca %"class.duckdb::unique_ptr.185", align 8 ; 9 uses
  %9 = alloca %"class.duckdb::unique_ptr.176", align 8 ; 11 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::allocator", align 1   ; 5 uses
  %12 = alloca %"class.duckdb_re2::StringPiece", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !197, !nonnull !27, !align !220
  %i.d = tail call noundef nonnull align 8 dereferenceable(481) ptr @_ZNK6duckdb14BaseExpression4CastINS_23BoundFunctionExpressionEEERKT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 472
  %i.f = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_12FunctionDataESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 2 uses
  %i.g = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0) ; 3 uses
  %i.h = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.i = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb10ListVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %6)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !157
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.g, i64 noundef %i.k, ptr noundef nonnull align 8 dereferenceable(73) %6)
          to label %bb.b unwind label %bb.q

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.c unwind label %bb.r

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.j, align 8, !tbaa !157
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.h, i64 noundef %i.l, ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.d unwind label %bb.s

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6duckdb10ListVector7ReserveERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef 2048)
          to label %bb.e unwind label %bb.s

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !180, !noalias !221 ; 2 uses
  %i.p = load <2 x ptr>, ptr %i.m, align 8, !tbaa !224, !noalias !221
  %.not.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb6Vector12GetAuxiliaryEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34, !noalias !221
  %.not.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr %i.q, align 4, !tbaa !3, !noalias !221
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.q, align 4, !tbaa !3, !noalias !221
  br label %_ZN6duckdb6Vector12GetAuxiliaryEv.exit

bb.h:                                             ; preds = %bb.f
  %i.u = atomicrmw volatile add ptr %i.q, i32 1 acq_rel, align 4, !noalias !221 ; 0 uses
  br label %_ZN6duckdb6Vector12GetAuxiliaryEv.exit

_ZN6duckdb6Vector12GetAuxiliaryEv.exit:           ; preds = %bb.h, %bb.g, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !180  ; 8 uses
  store <2 x ptr> %i.p, ptr %i.v, align 8, !tbaa !224
  %.not.i.i.i.i.i107 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i107, label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN6duckdb6Vector12GetAuxiliaryEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  %i.z = load atomic i64, ptr %i.y acquire, align 8 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 4294967297
  %i.ab = trunc i64 %i.z to i32                   ; 2 uses
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.y, align 8, !tbaa !181
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 0, ptr %i.ac, align 4, !tbaa !183
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !7
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #20, !inline_history !225
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !7
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #20, !inline_history !225
  br label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i.i.i.i108 = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i.i.i.i108, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = add nsw i32 %i.ab, -1
  store i32 %i.ak, ptr %i.y, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.al = atomicrmw volatile add ptr %i.y, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ab, %bb.l ], [ %i.al, %bb.m ]
  %i.am = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.am, label %bb.n, label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit, !prof !185

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #20
  br label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit: ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.j, %_ZN6duckdb6Vector12GetAuxiliaryEv.exit
  %i.an = invoke noundef zeroext i1 @_ZNK6duckdb9DataChunk11AllConstantEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit
  %15 = load i64, ptr %i.j, align 8
  %spec.select = select i1 %i.an, i64 1, i64 %15  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  store ptr null, ptr %8, align 8, !tbaa !226
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  store ptr null, ptr %9, align 8, !tbaa !228
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 4 uses
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !113, !range !26, !noundef !27
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.v, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ar = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23
          to label %_ZNSt10unique_ptrIN6duckdb20RegexStringPieceArgsESt14default_deleteIS1_EED2Ev.exit unwind label %bb.u ; 2 uses

_ZNSt10unique_ptrIN6duckdb20RegexStringPieceArgsESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.p
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i8 0, i64 24, i1 false), !noalias !230
  store ptr %i.ar, ptr %8, align 8, !tbaa !195
  br label %bb.ad

bb.q:                                             ; preds = %bb.a
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.r:                                             ; preds = %bb.b
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.s:                                             ; preds = %bb.d, %bb.c
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.t:                                             ; preds = %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.u:                                             ; preds = %bb.p
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.v:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !190
  store ptr %i.ay, ptr %5, align 8
  invoke void @_ZNK6duckdb12optional_ptrINS_18FunctionLocalStateELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.w unwind label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.az = load ptr, ptr %5, align 8, !tbaa !191   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 72
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !92
  %i.bc = icmp eq i32 %i.bb, -1
  br i1 %i.bc, label %bb.x, label %bb.ad

bb.x:                                             ; preds = %bb.w
  %i.bd = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.y unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 56
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !100
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES9_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %i.bf)
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %bb.y
  invoke void @__cxa_throw(ptr nonnull %i.bd, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
          to label %bb.db unwind label %bb.ab

bb.aa:                                            ; preds = %bb.v
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.x
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z, %bb.y
  %.078 = phi i1 [ false, %bb.z ], [ true, %bb.y ] ; 2 uses
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bj = load ptr, ptr %10, align 8, !tbaa !33   ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ab
  call void @_ZdlPv(ptr noundef %i.bj) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br i1 %.078, label %bb.ac, label %bb.cx

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br i1 %.078, label %bb.ac, label %bb.cx

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn99171 = phi { ptr, i32 } [ %i.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.bd) #20
  br label %bb.cx

bb.ad:                                            ; preds = %bb.w, %_ZNSt10unique_ptrIN6duckdb20RegexStringPieceArgsESt14default_deleteIS1_EED2Ev.exit
  %.not183 = icmp eq i64 %spec.select, 0
  br i1 %.not183, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ad
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.ae

._crit_edge:                                      ; preds = %bb.bo, %bb.ad
  %i.bw = invoke noundef zeroext i1 @_ZNK6duckdb9DataChunk11AllConstantEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %bb.bt unwind label %bb.bv

bb.ae:                                            ; preds = %.lr.ph, %bb.bo
  %.080182 = phi i64 [ 0, %.lr.ph ], [ %i.fv, %bb.bo ] ; 10 uses
  %i.bx = load i8, ptr %i.ao, align 8, !tbaa !113, !range !26, !noundef !27
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.aw, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bz = load ptr, ptr %7, align 8, !tbaa !169
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !178 ; 2 uses
  %.not.i111 = icmp eq ptr %i.ca, null
  br i1 %.not.i111, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %.080182
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3
  %i.cd = zext i32 %i.cc to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.ag, %bb.af
  %i.ce = phi i64 [ %i.cd, %bb.ag ], [ %.080182, %bb.af ] ; 3 uses
  %i.cf = load ptr, ptr %i.bm, align 8, !tbaa !148 ; 2 uses
  %.not.i112 = icmp eq ptr %i.cf, null
  br i1 %.not.i112, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.cg = lshr i64 %i.ce, 6
  %i.ch = and i64 %i.ce, 63
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cg
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !78
  %i.ck = shl nuw i64 1, %i.ch
  %i.cl = and i64 %i.cj, %i.ck
  %.not178 = icmp eq i64 %i.cl, 0
  br i1 %.not178, label %bb.aw, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_8string_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %7)
          to label %bb.ah unwind label %bb.ao

bb.ah:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.cm = load ptr, ptr %i.bn, align 8, !tbaa !179
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %i.cm, i64 %i.ce ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !34 ; 2 uses
  %i.cp = icmp ult i32 %i.co, 13
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = select i1 %i.cp, ptr %i.cq, ptr %i.cs
  %i.cu = zext i32 %i.co to i64
  store ptr %i.ct, ptr %12, align 8
  store i64 %i.cu, ptr %i.bo, align 8
  %i.cv = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #23
          to label %.noexc115 unwind label %bb.ap ; 3 uses

.noexc115:                                        ; preds = %bb.ah
  invoke void @_ZN10duckdb_re23RE2C1ERKNS_11StringPieceERKNS0_7OptionsE(ptr noundef nonnull align 8 dereferenceable(148) %i.cv, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(23) %i.bp)
          to label %_ZN6duckdb9make_uniqIN10duckdb_re23RE2EJRNS1_11StringPieceERKNS2_7OptionsEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.ai, !noalias !233

bb.ai:                                            ; preds = %.noexc115
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.cv) #22, !noalias !233
  br label %.body

_ZN6duckdb9make_uniqIN10duckdb_re23RE2EJRNS1_11StringPieceERKNS2_7OptionsEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %.noexc115
  %i.cx = load ptr, ptr %9, align 8, !tbaa !193   ; 3 uses
  store ptr %i.cv, ptr %9, align 8, !tbaa !193
  %.not.i.i.i.i.i116 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i.i.i116, label %_ZNSt10unique_ptrIN10duckdb_re23RE2ESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN10duckdb_re23RE2EEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN10duckdb_re23RE2EEclEPS1_.exit.i.i.i.i.i: ; preds = %_ZN6duckdb9make_uniqIN10duckdb_re23RE2EJRNS1_11StringPieceERKNS2_7OptionsEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  call void @_ZN10duckdb_re23RE2D1Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %i.cx) #20
  call void @_ZdlPv(ptr noundef nonnull %i.cx) #22
  br label %_ZNSt10unique_ptrIN10duckdb_re23RE2ESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN10duckdb_re23RE2ESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN10duckdb_re23RE2EEclEPS1_.exit.i.i.i.i.i, %_ZN6duckdb9make_uniqIN10duckdb_re23RE2EJRNS1_11StringPieceERKNS2_7OptionsEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.cy = invoke noundef ptr @_ZNK6duckdb10unique_ptrIN10duckdb_re23RE2ESt14default_deleteIS2_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.aj unwind label %bb.aq

bb.aj:                                            ; preds = %_ZNSt10unique_ptrIN10duckdb_re23RE2ESt14default_deleteIS1_EED2Ev.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 64
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !92 ; 2 uses
  %i.db = icmp eq i32 %i.da, -1
  br i1 %i.db, label %bb.ak, label %bb.at

bb.ak:                                            ; preds = %bb.aj
  %i.dc = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.al unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.thread

bb.al:                                            ; preds = %bb.ak
  %i.dd = invoke noundef ptr @_ZNK6duckdb10unique_ptrIN10duckdb_re23RE2ESt14default_deleteIS2_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.am unwind label %bb.ar

bb.am:                                            ; preds = %bb.al
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 48
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !100
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES9_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.df)
          to label %bb.an unwind label %bb.ar

bb.an:                                            ; preds = %bb.am
  invoke void @__cxa_throw(ptr nonnull %i.dc, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
          to label %bb.db unwind label %bb.ar

bb.ao:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.ap:                                            ; preds = %bb.ah
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aq:                                            ; preds = %.noexc123, %.noexc122, %.noexc121, %bb.av, %bb.at, %_ZNSt10unique_ptrIN10duckdb_re23RE2ESt14default_deleteIS1_EED2Ev.exit
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.thread: ; preds = %bb.ak
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %bb.as

bb.ar:                                            ; preds = %bb.an, %bb.am, %bb.al
  %.083 = phi i1 [ false, %bb.an ], [ true, %bb.am ], [ true, %bb.al ] ; 2 uses
  %i.dk = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.dl = load ptr, ptr %13, align 8, !tbaa !33   ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118: ; preds = %bb.ar
  call void @_ZdlPv(ptr noundef %i.dl) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br i1 %.083, label %bb.as, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120: ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br i1 %.083, label %bb.as, label %.body

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120
  %.pn176 = phi { ptr, i32 } [ %i.dj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.thread ], [ %i.dk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120 ], [ %i.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118 ]
  call void @__cxa_free_exception(ptr %i.dc) #20
  br label %.body

bb.at:                                            ; preds = %bb.aj
  %i.do = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_20RegexStringPieceArgsESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.au unwind label %bb.aq     ; 4 uses

bb.au:                                            ; preds = %bb.at
  %i.dp = sext i32 %i.da to i64                   ; 3 uses
  store i64 %i.dp, ptr %i.do, align 8, !tbaa !142
  %i.dq = add nsw i64 %i.dp, 1                    ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !236 ; 2 uses
  %i.dt = icmp ugt i64 %i.dq, %i.ds
  br i1 %i.dt, label %bb.av, label %_ZN6duckdb20RegexStringPieceArgs7SetSizeEm.exit

bb.av:                                            ; preds = %bb.au
  %i.du = getelementptr inbounds nuw i8, ptr %i.do, i64 16 ; 3 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !145
  %i.dw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb9Allocator16DefaultAllocatorEv()
          to label %.noexc121 unwind label %bb.aq

.noexc121:                                        ; preds = %bb.av
  %i.dx = shl i64 %i.ds, 4
  invoke void @_ZN6duckdb9Allocator8FreeDataEPhm(ptr noundef nonnull align 8 dereferenceable(32) %i.dw, ptr noundef %i.dv, i64 noundef %i.dx)
          to label %.noexc122 unwind label %bb.aq

.noexc122:                                        ; preds = %.noexc121
  store i64 0, ptr %i.du, align 8
  store i64 %i.dp, ptr %i.do, align 8, !tbaa !142
  store i64 %i.dq, ptr %i.dr, align 8, !tbaa !236
  %i.dy = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb9Allocator16DefaultAllocatorEv()
          to label %.noexc123 unwind label %bb.aq

.noexc123:                                        ; preds = %.noexc122
  %i.dz = shl nsw i64 %i.dq, 4
  %i.ea = invoke noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.dy, i64 noundef %i.dz)
          to label %.noexc124 unwind label %bb.aq

.noexc124:                                        ; preds = %.noexc123
  store ptr %i.ea, ptr %i.du, align 8, !tbaa !145
  br label %_ZN6duckdb20RegexStringPieceArgs7SetSizeEm.exit

_ZN6duckdb20RegexStringPieceArgs7SetSizeEm.exit:  ; preds = %.noexc124, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %bb.aw

.body:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118, %bb.ap, %bb.ai, %bb.aq, %bb.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120
  %.pn.pn.pn = phi { ptr, i32 } [ %i.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118 ], [ %i.di, %bb.aq ], [ %.pn176, %bb.as ], [ %i.dk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120 ], [ %i.dh, %bb.ap ], [ %i.cw, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %bb.cx

bb.aw:                                            ; preds = %_ZN6duckdb20RegexStringPieceArgs7SetSizeEm.exit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, %bb.ae
  %.182 = phi i1 [ true, %bb.ae ], [ false, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit ], [ true, %_ZN6duckdb20RegexStringPieceArgs7SetSizeEm.exit ]
  %i.eb = load ptr, ptr %6, align 8, !tbaa !169
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !178 ; 2 uses
  %.not.i125 = icmp eq ptr %i.ec, null
  br i1 %.not.i125, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit126, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %.080182
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !3
  %i.ef = zext i32 %i.ee to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit126

_ZNK6duckdb15SelectionVector9get_indexEm.exit126: ; preds = %bb.ax, %bb.aw
  %i.eg = phi i64 [ %i.ef, %bb.ax ], [ %.080182, %bb.aw ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  br i1 %.182, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit126
  %i.eh = load ptr, ptr %i.bq, align 8, !tbaa !148 ; 2 uses
  %.not.i127 = icmp eq ptr %i.eh, null
  br i1 %.not.i127, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit129.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit129

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit129: ; preds = %bb.ay
  %i.ei = lshr i64 %i.eg, 6
  %i.ej = and i64 %i.eg, 63
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.ei
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !78
  %i.em = shl nuw i64 1, %i.ej
  %i.en = and i64 %i.el, %i.em
  %.not179 = icmp eq i64 %i.en, 0
  br i1 %.not179, label %bb.ba, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit129.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit129.thread: ; preds = %bb.ay, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit129
  %i.eo = invoke noundef i32 @_ZN6duckdb13GetGroupIndexERNS_9DataChunkEmRi(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %.080182, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.az unwind label %bb.bf

bb.az:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit129.thread
  %.not = icmp eq i32 %i.eo, 0
  br i1 %.not, label %bb.ba, label %bb.bi

bb.ba:                                            ; preds = %bb.az, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit129, %_ZNK6duckdb15SelectionVector9get_indexEm.exit126
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.bb unwind label %bb.bg

bb.bb:                                            ; preds = %bb.ba
  %i.ep = load ptr, ptr %i.bt, align 8, !tbaa !125
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.bc unwind label %bb.bh

bb.bc:                                            ; preds = %bb.bb
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %i.ep, i64 %.080182 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  store i64 0, ptr %i.er, align 8, !tbaa !141
  %i.es = invoke noundef i64 @_ZN6duckdb10ListVector11GetListSizeERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.bd unwind label %bb.bh

bb.bd:                                            ; preds = %bb.bc
  store i64 %i.es, ptr %i.eq, align 8, !tbaa !139
  %i.et = load ptr, ptr %i.bu, align 8, !tbaa !148 ; 2 uses
  %.not.i132 = icmp eq ptr %i.et, null
  br i1 %.not.i132, label %bb.be, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.be:                                            ; preds = %bb.bd
  %i.eu = load i64, ptr %i.bv, align 8, !tbaa !149
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, i64 noundef %i.eu)
          to label %.noexc133 unwind label %bb.bh

.noexc133:                                        ; preds = %bb.be
  %.pre.i = load ptr, ptr %i.bu, align 8, !tbaa !148
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.bd, %.noexc133
  %i.ev = phi ptr [ %.pre.i, %.noexc133 ], [ %i.et, %bb.bd ]
  %i.ew = lshr i64 %.080182, 6
  %i.ex = and i64 %.080182, 63
  %i.ey = shl nuw i64 1, %i.ex
  %i.ez = xor i64 %i.ey, -1
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.ew ; 2 uses
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !78
  %i.fc = and i64 %i.fb, %i.ez
  store i64 %i.fc, ptr %i.fa, align 8, !tbaa !78
  br label %bb.bo

bb.bf:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit129.thread
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.bg:                                            ; preds = %bb.ba
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.bh:                                            ; preds = %bb.be, %bb.bb, %bb.bc
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.bi:                                            ; preds = %bb.az
  %i.fg = load i8, ptr %i.ao, align 8, !tbaa !113, !range !26, !noundef !27
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.fi = load ptr, ptr %i.br, align 8, !tbaa !190
  store ptr %i.fi, ptr %4, align 8
  invoke void @_ZNK6duckdb12optional_ptrINS_18FunctionLocalStateELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc135 unwind label %bb.bp

.noexc135:                                        ; preds = %bb.bj
  %i.fj = load ptr, ptr %4, align 8, !tbaa !191
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  br label %_ZN6duckdb10GetPatternERKNS_18RegexpBaseBindDataERNS_15ExpressionStateERNS_10unique_ptrIN10duckdb_re23RE2ESt14default_deleteIS7_ELb1EEE.exit137

bb.bk:                                            ; preds = %bb.bi
  %i.fl = invoke noundef nonnull align 8 dereferenceable(148) ptr @_ZNK6duckdb10unique_ptrIN10duckdb_re23RE2ESt14default_deleteIS2_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %_ZN6duckdb10GetPatternERKNS_18RegexpBaseBindDataERNS_15ExpressionStateERNS_10unique_ptrIN10duckdb_re23RE2ESt14default_deleteIS7_ELb1EEE.exit137 unwind label %bb.bp

_ZN6duckdb10GetPatternERKNS_18RegexpBaseBindDataERNS_15ExpressionStateERNS_10unique_ptrIN10duckdb_re23RE2ESt14default_deleteIS7_ELb1EEE.exit137: ; preds = %.noexc135, %bb.bk
  %.0.i134 = phi ptr [ %i.fk, %.noexc135 ], [ %i.fl, %bb.bk ]
  %i.fm = load i8, ptr %i.ao, align 8, !tbaa !113, !range !26, !noundef !27
  %i.fn = trunc nuw i8 %i.fm to i1
  br i1 %i.fn, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %_ZN6duckdb10GetPatternERKNS_18RegexpBaseBindDataERNS_15ExpressionStateERNS_10unique_ptrIN10duckdb_re23RE2ESt14default_deleteIS7_ELb1EEE.exit137
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.fo = load ptr, ptr %i.br, align 8, !tbaa !190
  store ptr %i.fo, ptr %3, align 8
  invoke void @_ZNK6duckdb12optional_ptrINS_18FunctionLocalStateELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc139 unwind label %bb.bq

.noexc139:                                        ; preds = %bb.bl
  %i.fp = load ptr, ptr %3, align 8, !tbaa !191
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 160
  br label %_ZN6duckdb15GetGroupsBufferERKNS_18RegexpBaseBindDataERNS_15ExpressionStateERNS_10unique_ptrINS_20RegexStringPieceArgsESt14default_deleteIS6_ELb1EEE.exit

bb.bm:                                            ; preds = %_ZN6duckdb10GetPatternERKNS_18RegexpBaseBindDataERNS_15ExpressionStateERNS_10unique_ptrIN10duckdb_re23RE2ESt14default_deleteIS7_ELb1EEE.exit137
  %i.fr = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb10unique_ptrINS_20RegexStringPieceArgsESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %_ZN6duckdb15GetGroupsBufferERKNS_18RegexpBaseBindDataERNS_15ExpressionStateERNS_10unique_ptrINS_20RegexStringPieceArgsESt14default_deleteIS6_ELb1EEE.exit unwind label %bb.bq

_ZN6duckdb15GetGroupsBufferERKNS_18RegexpBaseBindDataERNS_15ExpressionStateERNS_10unique_ptrINS_20RegexStringPieceArgsESt14default_deleteIS6_ELb1EEE.exit: ; preds = %.noexc139, %bb.bm
  %.0.i138 = phi ptr [ %i.fq, %.noexc139 ], [ %i.fr, %bb.bm ]
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_8string_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %6)
          to label %bb.bn unwind label %bb.br

bb.bn:                                            ; preds = %_ZN6duckdb15GetGroupsBufferERKNS_18RegexpBaseBindDataERNS_15ExpressionStateERNS_10unique_ptrINS_20RegexStringPieceArgsESt14default_deleteIS6_ELb1EEE.exit
  %i.fs = load ptr, ptr %i.bs, align 8, !tbaa !179
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %i.fs, i64 %i.eg
  %i.fu = load i32, ptr %i.a, align 4, !tbaa !3
  invoke void @_ZN6duckdb18ExtractSingleTupleERKNS_8string_tERN10duckdb_re23RE2EiRNS_20RegexStringPieceArgsERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(16) %i.ft, ptr noundef nonnull align 8 dereferenceable(148) %.0.i134, i32 noundef %i.fu, ptr noundef nonnull align 8 dereferenceable(24) %.0.i138, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %.080182)
          to label %bb.bo unwind label %bb.br

bb.bo:                                            ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.fv = add nuw i64 %.080182, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.fv, %spec.select
  br i1 %exitcond.not, label %._crit_edge, label %bb.ae, !llvm.loop !237

bb.bp:                                            ; preds = %bb.bk, %bb.bj
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.bq:                                            ; preds = %bb.bm, %bb.bl
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.br:                                            ; preds = %_ZN6duckdb15GetGroupsBufferERKNS_18RegexpBaseBindDataERNS_15ExpressionStateERNS_10unique_ptrINS_20RegexStringPieceArgsESt14default_deleteIS6_ELb1EEE.exit, %bb.bn
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bp, %bb.br, %bb.bq, %bb.bg, %bb.bh, %bb.bf
  %.pn93.pn.pn = phi { ptr, i32 } [ %i.fe, %bb.bg ], [ %i.fd, %bb.bf ], [ %i.ff, %bb.bh ], [ %i.fw, %bb.bp ], [ %i.fy, %bb.br ], [ %i.fx, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.cx

bb.bt:                                            ; preds = %._crit_edge
  br i1 %i.bw, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
          to label %bb.bw unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %._crit_edge
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.bw:                                            ; preds = %bb.bu, %bb.bt
  %i.ga = load ptr, ptr %9, align 8, !tbaa !193   ; 3 uses
  %.not.i143 = icmp eq ptr %i.ga, null
  br i1 %.not.i143, label %_ZNSt10unique_ptrIN10duckdb_re23RE2ESt14default_deleteIS1_EED2Ev.exit145, label %_ZNKSt14default_deleteIN10duckdb_re23RE2EEclEPS1_.exit.i144

_ZNKSt14default_deleteIN10duckdb_re23RE2EEclEPS1_.exit.i144: ; preds = %bb.bw
  call void @_ZN10duckdb_re23RE2D1Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %i.ga) #20
  call void @_ZdlPv(ptr noundef nonnull %i.ga) #22
  br label %_ZNSt10unique_ptrIN10duckdb_re23RE2ESt14default_deleteIS1_EED2Ev.exit145

_ZNSt10unique_ptrIN10duckdb_re23RE2ESt14default_deleteIS1_EED2Ev.exit145: ; preds = %bb.bw, %_ZNKSt14default_deleteIN10duckdb_re23RE2EEclEPS1_.exit.i144
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  %i.gb = load ptr, ptr %8, align 8, !tbaa !195   ; 4 uses
  %.not.i146 = icmp eq ptr %i.gb, null
  br i1 %.not.i146, label %_ZNSt10unique_ptrIN6duckdb20RegexStringPieceArgsESt14default_deleteIS1_EED2Ev.exit149, label %bb.bx

bb.bx:                                            ; preds = %_ZNSt10unique_ptrIN10duckdb_re23RE2ESt14default_deleteIS1_EED2Ev.exit145
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !145
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !236
  %i.gg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb9Allocator16DefaultAllocatorEv()
          to label %.noexc.i.i.i147 unwind label %bb.by

.noexc.i.i.i147:                                  ; preds = %bb.bx
  %i.gh = shl i64 %i.gf, 4
  invoke void @_ZN6duckdb9Allocator8FreeDataEPhm(ptr noundef nonnull align 8 dereferenceable(32) %i.gg, ptr noundef %i.gd, i64 noundef %i.gh)
          to label %_ZNKSt14default_deleteIN6duckdb20RegexStringPieceArgsEEclEPS1_.exit.i148 unwind label %bb.by

bb.by:                                            ; preds = %.noexc.i.i.i147, %bb.bx
  %i.gi = landingpad { ptr, i32 }
          catch ptr null
  %i.gj = extractvalue { ptr, i32 } %i.gi, 0
  call void @__clang_call_terminate(ptr %i.gj) #24
  unreachable

_ZNKSt14default_deleteIN6duckdb20RegexStringPieceArgsEEclEPS1_.exit.i148: ; preds = %.noexc.i.i.i147
  call void @_ZdlPv(ptr noundef nonnull %i.gb) #22
  br label %_ZNSt10unique_ptrIN6duckdb20RegexStringPieceArgsESt14default_deleteIS1_EED2Ev.exit149

_ZNSt10unique_ptrIN6duckdb20RegexStringPieceArgsESt14default_deleteIS1_EED2Ev.exit149: ; preds = %_ZNSt10unique_ptrIN10duckdb_re23RE2ESt14default_deleteIS1_EED2Ev.exit145, %_ZNKSt14default_deleteIN6duckdb20RegexStringPieceArgsEEclEPS1_.exit.i148
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.gk = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !180 ; 8 uses
  %.not.i.i.i.i.i150 = icmp eq ptr %i.gl, null
  br i1 %.not.i.i.i.i.i150, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.bz

bb.bz:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb20RegexStringPieceArgsESt14default_deleteIS1_EED2Ev.exit149
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8 ; 4 uses
  %i.gn = load atomic i64, ptr %i.gm acquire, align 8 ; 2 uses
  %i.go = icmp eq i64 %i.gn, 4294967297
  %i.gp = trunc i64 %i.gn to i32                  ; 2 uses
  br i1 %i.go, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  store i32 0, ptr %i.gm, align 8, !tbaa !181
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gl, i64 12
  store i32 0, ptr %i.gq, align 4, !tbaa !183
  %i.gr = load ptr, ptr %i.gl, align 8, !tbaa !7
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %i.gt = load ptr, ptr %i.gs, align 8
  call void %i.gt(ptr noundef nonnull align 8 dereferenceable(16) %i.gl) #20, !inline_history !184
  %i.gu = load ptr, ptr %i.gl, align 8, !tbaa !7
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  %i.gw = load ptr, ptr %i.gv, align 8
  call void %i.gw(ptr noundef nonnull align 8 dereferenceable(16) %i.gl) #20, !inline_history !184
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.cb:                                            ; preds = %bb.bz
  %i.gx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i.i.i.i151 = icmp eq i8 %i.gx, 0
  br i1 %.not.i.i.i.i.i.i151, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.gy = add nsw i32 %i.gp, -1
  store i32 %i.gy, ptr %i.gm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i152

bb.cd:                                            ; preds = %bb.cb
  %i.gz = atomicrmw volatile add ptr %i.gm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i152

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i152: ; preds = %bb.cd, %bb.cc
  %.0.i.i.i.i.i.i.i153 = phi i32 [ %i.gp, %bb.cc ], [ %i.gz, %bb.cd ]
  %i.ha = icmp eq i32 %.0.i.i.i.i.i.i.i153, 1
  br i1 %i.ha, label %bb.ce, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !185

bb.ce:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i152
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gl) #20
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.ce, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i152, %bb.ca, %_ZNSt10unique_ptrIN6duckdb20RegexStringPieceArgsESt14default_deleteIS1_EED2Ev.exit149
  %i.hb = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !180 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.hc, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.cf

bb.cf:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8 ; 4 uses
  %i.he = load atomic i64, ptr %i.hd acquire, align 8 ; 2 uses
  %i.hf = icmp eq i64 %i.he, 4294967297
  %i.hg = trunc i64 %i.he to i32                  ; 2 uses
  br i1 %i.hf, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  store i32 0, ptr %i.hd, align 8, !tbaa !181
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hc, i64 12
  store i32 0, ptr %i.hh, align 4, !tbaa !183
  %i.hi = load ptr, ptr %i.hc, align 8, !tbaa !7
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  %i.hk = load ptr, ptr %i.hj, align 8
  call void %i.hk(ptr noundef nonnull align 8 dereferenceable(16) %i.hc) #20, !inline_history !186
  %i.hl = load ptr, ptr %i.hc, align 8, !tbaa !7
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 24
  %i.hn = load ptr, ptr %i.hm, align 8
  call void %i.hn(ptr noundef nonnull align 8 dereferenceable(16) %i.hc) #20, !inline_history !186
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.ch:                                            ; preds = %bb.cf
  %i.ho = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.ho, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.hp = add nsw i32 %i.hg, -1
  store i32 %i.hp, ptr %i.hd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.cj:                                            ; preds = %bb.ch
  %i.hq = atomicrmw volatile add ptr %i.hd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.cj, %bb.ci
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.hg, %bb.ci ], [ %i.hq, %bb.cj ]
  %i.hr = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.hr, label %bb.ck, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !185

bb.ck:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hc) #20
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.cg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.hs = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !180 ; 8 uses
  %.not.i.i.i.i.i154 = icmp eq ptr %i.ht, null
  br i1 %.not.i.i.i.i.i154, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i158, label %bb.cl

bb.cl:                                            ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 8 ; 4 uses
  %i.hv = load atomic i64, ptr %i.hu acquire, align 8 ; 2 uses
  %i.hw = icmp eq i64 %i.hv, 4294967297
  %i.hx = trunc i64 %i.hv to i32                  ; 2 uses
  br i1 %i.hw, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  store i32 0, ptr %i.hu, align 8, !tbaa !181
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ht, i64 12
  store i32 0, ptr %i.hy, align 4, !tbaa !183
  %i.hz = load ptr, ptr %i.ht, align 8, !tbaa !7
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %i.ib = load ptr, ptr %i.ia, align 8
  call void %i.ib(ptr noundef nonnull align 8 dereferenceable(16) %i.ht) #20, !inline_history !184
  %i.ic = load ptr, ptr %i.ht, align 8, !tbaa !7
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 24
  %i.ie = load ptr, ptr %i.id, align 8
end_hunk_0
begin_hunk_1_@_ZNK6duckdb10unique_ptrINS_20RegexStringPieceArgsESt14default_deleteIS1_ELb1EEptEv:bb.a
bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !33     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_20RegexStringPieceArgsESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

declare void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104), i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb22RegexpExtractAllStruct7ExecuteERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  %i.j = alloca i64, align 8                      ; 4 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %11 = alloca %"class.duckdb_re2::StringPiece", align 8 ; 10 uses
  %.sroa.4.i = alloca [12 x i8], align 4          ; 7 uses
  %12 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %13 = alloca %"class.duckdb::optional_ptr", align 8 ; 6 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0) ; 3 uses
  %i.l = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb10ListVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.m = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb12StructVector10GetEntriesERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.l) ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !248  ; 3 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !251  ; 3 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3
  %.not147 = icmp eq ptr %i.p, %i.o
  br i1 %.not147, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %12)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !157
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.k, i64 noundef %i.x, ptr noundef nonnull align 8 dereferenceable(73) %12)
          to label %bb.l unwind label %bb.s

bb.b:                                             ; preds = %.lr.ph, %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit
  %.sroa.0120.0148 = phi ptr [ %i.p, %.lr.ph ], [ %i.az, %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit ] ; 3 uses
  %i.y = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0120.0148) ; 2 uses
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !180, !noalias !252 ; 2 uses
  %i.aa = load <2 x ptr>, ptr %i.u, align 8, !tbaa !224, !noalias !252
  %.not.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb6Vector12GetAuxiliaryEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34, !noalias !252
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !3, !noalias !252
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ab, align 4, !tbaa !3, !noalias !252
  br label %_ZN6duckdb6Vector12GetAuxiliaryEv.exit

bb.e:                                             ; preds = %bb.c
  %i.af = atomicrmw volatile add ptr %i.ab, i32 1 acq_rel, align 4, !noalias !252 ; 0 uses
  br label %_ZN6duckdb6Vector12GetAuxiliaryEv.exit

_ZN6duckdb6Vector12GetAuxiliaryEv.exit:           ; preds = %bb.b, %bb.d, %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 88
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !180 ; 8 uses
  store <2 x ptr> %i.aa, ptr %i.ag, align 8, !tbaa !224
  %.not.i.i.i.i.i57 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i57, label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6duckdb6Vector12GetAuxiliaryEv.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 4 uses
  %i.ak = load atomic i64, ptr %i.aj acquire, align 8 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 4294967297
  %i.am = trunc i64 %i.ak to i32                  ; 2 uses
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.aj, align 8, !tbaa !181
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  store i32 0, ptr %i.an, align 4, !tbaa !183
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !7
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #20, !inline_history !225
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !7
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #20, !inline_history !225
  br label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.au = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i.i.i.i58 = icmp eq i8 %i.au, 0
  br i1 %.not.i.i.i.i.i.i58, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = add nsw i32 %i.am, -1
  store i32 %i.av, ptr %i.aj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.aw = atomicrmw volatile add ptr %i.aj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.am, %bb.i ], [ %i.aw, %bb.j ]
  %i.ax = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ax, label %bb.k, label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit, !prof !185

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #20
  br label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit: ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.g, %_ZN6duckdb6Vector12GetAuxiliaryEv.exit
  %i.ay = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0120.0148)
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %i.ay, i8 noundef zeroext 0)
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0120.0148, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.az, %i.o
  br i1 %.not, label %._crit_edge, label %bb.b

bb.l:                                             ; preds = %._crit_edge
  invoke void @_ZN6duckdb10ListVector7ReserveERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef 2048)
          to label %bb.m unwind label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.ba = invoke noundef zeroext i1 @_ZNK6duckdb9DataChunk11AllConstantEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %bb.n unwind label %bb.t

bb.n:                                             ; preds = %bb.m
  %14 = load i64, ptr %i.w, align 8
  %spec.select = select i1 %i.ba, i64 1, i64 %14  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !190
  store ptr %i.bc, ptr %13, align 8
  invoke void @_ZNK6duckdb12optional_ptrINS_18FunctionLocalStateELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.bd = load ptr, ptr %13, align 8, !tbaa !191
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.p unwind label %bb.v

bb.p:                                             ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.q unwind label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !125
  %i.bh = add nsw i64 %i.t, 1                     ; 3 uses
  %i.bi = icmp ugt i64 %i.bh, 576460752303423487
  br i1 %i.bi, label %bb.r, label %_ZNSt6vectorIN10duckdb_re211StringPieceESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #21
          to label %.noexc unwind label %bb.x

.noexc:                                           ; preds = %bb.r
  unreachable

_ZNSt6vectorIN10duckdb_re211StringPieceESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i: ; preds = %bb.q
  %.not.i.i.i.i.i59 = icmp eq i64 %i.bh, 0
  br i1 %.not.i.i.i.i.i59, label %_ZN6duckdb6vectorIN10duckdb_re211StringPieceELb1ESaIS2_EECI2St6vectorIS2_S3_EEmRKS3_.exit, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %_ZNSt6vectorIN10duckdb_re211StringPieceESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i
  %i.bj = shl nuw nsw i64 %i.bh, 4                ; 3 uses
  %i.bk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #23
          to label %.noexc60 unwind label %bb.x   ; 3 uses

.noexc60:                                         ; preds = %.lr.ph.preheader.i.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bk, i8 0, i64 %i.bj, i1 false)
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.bk, i64 %i.bj
  %i.bl = ptrtoint ptr %scevgep.i.i.i.i.i.i to i64
  br label %_ZN6duckdb6vectorIN10duckdb_re211StringPieceELb1ESaIS2_EECI2St6vectorIS2_S3_EEmRKS3_.exit

_ZN6duckdb6vectorIN10duckdb_re211StringPieceELb1ESaIS2_EECI2St6vectorIS2_S3_EEmRKS3_.exit: ; preds = %.noexc60, %_ZNSt6vectorIN10duckdb_re211StringPieceESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i
  %.sroa.0112.0 = phi ptr [ %i.bk, %.noexc60 ], [ null, %_ZNSt6vectorIN10duckdb_re211StringPieceESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i ] ; 11 uses
  %.0.lcssa.i.i.i.i.i.i = phi i64 [ %i.bl, %.noexc60 ], [ 0, %_ZNSt6vectorIN10duckdb_re211StringPieceESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i ]
  %.not153 = icmp eq i64 %spec.select, 0
  br i1 %.not153, label %._crit_edge152, label %.lr.ph151

.lr.ph151:                                        ; preds = %_ZN6duckdb6vectorIN10duckdb_re211StringPieceELb1ESaIS2_EECI2St6vectorIS2_S3_EEmRKS3_.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bo = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0112.0, i64 8 ; 2 uses
  %i.bs = ptrtoint ptr %.sroa.0112.0 to i64
  %i.bt = sub i64 %.0.lcssa.i.i.i.i.i.i, %i.bs
  %i.bu = ashr exact i64 %i.bt, 4                 ; 2 uses
  %i.bv = call i64 @llvm.usub.sat.i64(i64 %i.bu, i64 1)
  %.sroa.4.i.4.i.4.i.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i, i64 4
  br label %bb.y

._crit_edge152:                                   ; preds = %bb.ce, %_ZN6duckdb6vectorIN10duckdb_re211StringPieceELb1ESaIS2_EECI2St6vectorIS2_S3_EEmRKS3_.exit
  %i.bw = invoke noundef zeroext i1 @_ZNK6duckdb9DataChunk11AllConstantEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %bb.cf unwind label %bb.ch

bb.s:                                             ; preds = %bb.l, %._crit_edge
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN10duckdb_re211StringPieceESaIS1_EED2Ev.exit88

bb.t:                                             ; preds = %bb.m
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN10duckdb_re211StringPieceESaIS1_EED2Ev.exit88

bb.u:                                             ; preds = %bb.n
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %_ZNSt6vectorIN10duckdb_re211StringPieceESaIS1_EED2Ev.exit88

bb.v:                                             ; preds = %bb.o
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN10duckdb_re211StringPieceESaIS1_EED2Ev.exit88

bb.w:                                             ; preds = %bb.p
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN10duckdb_re211StringPieceESaIS1_EED2Ev.exit88

bb.x:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %bb.r
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN10duckdb_re211StringPieceESaIS1_EED2Ev.exit88

bb.y:                                             ; preds = %.lr.ph151, %bb.ce
  %.048150 = phi i64 [ 0, %.lr.ph151 ], [ %i.lc, %bb.ce ] ; 7 uses
  %i.cd = load ptr, ptr %12, align 8, !tbaa !169
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !178 ; 2 uses
  %.not.i = icmp eq ptr %i.ce, null
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %.048150
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !3
  %i.ch = zext i32 %i.cg to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.z, %bb.y
  %i.ci = phi i64 [ %i.ch, %bb.z ], [ %.048150, %bb.y ] ; 3 uses
  %i.cj = load ptr, ptr %i.bm, align 8, !tbaa !148 ; 2 uses
  %.not.i61 = icmp eq ptr %i.cj, null
  br i1 %.not.i61, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.ck = lshr i64 %i.ci, 6
  %i.cl = and i64 %i.ci, 63
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.ck
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !78
  %i.co = shl nuw i64 1, %i.cl
  %i.cp = and i64 %i.cn, %i.co
  %.not132 = icmp eq i64 %i.cp, 0
  br i1 %.not132, label %bb.aa, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

bb.aa:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.cq = invoke noundef i64 @_ZN6duckdb10ListVector11GetListSizeERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %.048150 ; 2 uses
  store i64 %i.cq, ptr %i.cr, align 8, !tbaa !139
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i64 0, ptr %i.cs, align 8, !tbaa !141
  %i.ct = load ptr, ptr %i.be, align 8, !tbaa !148 ; 2 uses
  %.not.i62 = icmp eq ptr %i.ct, null
  br i1 %.not.i62, label %bb.ac, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.ac:                                            ; preds = %bb.ab
  %i.cu = load i64, ptr %i.bn, align 8, !tbaa !149
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.be, i64 noundef %i.cu)
          to label %.noexc63 unwind label %bb.ad

.noexc63:                                         ; preds = %bb.ac
  %.pre.i = load ptr, ptr %i.be, align 8, !tbaa !148
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.ab, %.noexc63
  %i.cv = phi ptr [ %.pre.i, %.noexc63 ], [ %i.ct, %bb.ab ]
  %i.cw = lshr i64 %.048150, 6
  %i.cx = and i64 %.048150, 63
  %i.cy = shl nuw i64 1, %i.cx
  %i.cz = xor i64 %i.cy, -1
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.cw ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !78
  %i.dc = and i64 %i.db, %i.cz
  store i64 %i.dc, ptr %i.da, align 8, !tbaa !78
  br label %bb.ce

bb.ad:                                            ; preds = %bb.ac, %bb.aa
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_8string_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %12)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.de = load ptr, ptr %i.bo, align 8, !tbaa !179
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %i.ci ; 4 uses
  %i.dg = load ptr, ptr %i.n, align 8, !tbaa !248 ; 2 uses
  %i.dh = load ptr, ptr %i.m, align 8, !tbaa !251 ; 2 uses
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = sub i64 %i.di, %i.dj
  %i.dl = ashr exact i64 %i.dk, 3                 ; 2 uses
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %.noexc67 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc67:                                         ; preds = %bb.ae
  %i.dm = load ptr, ptr %i.bf, align 8, !tbaa !125
  %i.dn = invoke noundef i64 @_ZN6duckdb10ListVector11GetListSizeERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %.noexc68 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc68:                                         ; preds = %.noexc67
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.dm, i64 %.048150 ; 3 uses
  store i64 %i.dn, ptr %i.do, align 8, !tbaa !139
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.dp = load i32, ptr %i.df, align 8, !tbaa !34 ; 2 uses
  %i.dq = icmp ult i32 %i.dp, 13
  %i.dr = getelementptr inbounds nuw i8, ptr %i.df, i64 4 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8
  %i.du = select i1 %i.dq, ptr %i.dr, ptr %i.dt
  %i.dv = zext i32 %i.dp to i64                   ; 3 uses
  store ptr %i.du, ptr %11, align 8
  store i64 %i.dv, ptr %i.bq, align 8
  %i.dw = trunc i64 %i.dl to i32
  %i.dx = add nsw i32 %i.dw, 1                    ; 2 uses
  %i.dy = icmp ne ptr %i.dg, %i.dh
  %.fr.i = freeze i1 %i.dy
  br i1 %.fr.i, label %.split.us.preheader.i, label %.split.i

.split.us.preheader.i:                            ; preds = %.noexc68
  %umax.i = call i64 @llvm.umax.i64(i64 %i.dl, i64 1)
  br label %.split.us.i

.split.us.i:                                      ; preds = %._crit_edge.us.i, %.split.us.preheader.i
  %i.dz = phi i64 [ %i.in, %._crit_edge.us.i ], [ %i.dv, %.split.us.preheader.i ]
  %.078.us.i = phi i64 [ %i.ek, %._crit_edge.us.i ], [ 0, %.split.us.preheader.i ] ; 4 uses
  %.0.us.i = phi i64 [ %i.el, %._crit_edge.us.i ], [ %i.dn, %.split.us.preheader.i ] ; 6 uses
  %i.ea = invoke noundef zeroext i1 @_ZNK10duckdb_re23RE25MatchERKNS_11StringPieceEmmNS0_6AnchorEPS1_i(ptr noundef nonnull align 8 dereferenceable(148) %i.bp, ptr noundef nonnull align 8 dereferenceable(16) %11, i64 noundef %.078.us.i, i64 noundef %i.dz, i32 noundef 0, ptr noundef %.sroa.0112.0, i32 noundef %i.dx)
          to label %.noexc69 unwind label %.loopexit.split-lp.loopexit

.noexc69:                                         ; preds = %.split.us.i
  br i1 %i.ea, label %bb.af, label %_ZN6duckdbL16ExtractAllStructERN10duckdb_re211StringPieceERNS0_3RE2ERmPS1_i.exit.i

bb.af:                                            ; preds = %.noexc69
  %i.eb = load ptr, ptr %.sroa.0112.0, align 8, !tbaa !89
  %i.ec = load i64, ptr %i.br, align 8, !tbaa !91
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ec
  %i.ee = load ptr, ptr %11, align 8, !tbaa !89
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %.078.us.i
  %i.eg = ptrtoint ptr %i.ed to i64
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = sub i64 %i.eg, %i.eh                    ; 2 uses
  %.not.i.us.i = icmp eq i64 %i.ei, 0
  br i1 %.not.i.us.i, label %bb.ag, label %.noexc70

bb.ag:                                            ; preds = %bb.af
  %i.ej = invoke noundef i64 @_ZN6duckdb11regexp_util19AdvanceOneUTF8BasicERKN10duckdb_re211StringPieceEm(ptr noundef nonnull align 8 dereferenceable(16) %11, i64 noundef %.078.us.i)
          to label %.noexc70 unwind label %.loopexit.split-lp.loopexit

.noexc70:                                         ; preds = %bb.ag, %bb.af
  %.0.i.us.i = phi i64 [ %i.ei, %bb.af ], [ %i.ej, %bb.ag ]
  %i.ek = add i64 %.0.i.us.i, %.078.us.i          ; 2 uses
  %i.el = add i64 %.0.us.i, 1                     ; 3 uses
  %i.em = invoke noundef i64 @_ZN6duckdb10ListVector15GetListCapacityERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %.noexc71 unwind label %.loopexit.split-lp.loopexit

.noexc71:                                         ; preds = %.noexc70
  %.not.us.i = icmp ult i64 %i.el, %i.em
  br i1 %.not.us.i, label %.lr.ph.us.i, label %bb.ah

end_hunk_1
begin_hunk_2_@_ZN6duckdb22RegexpExtractAllStruct7ExecuteERNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.jr, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.bq unwind label %bb.br

bb.bq:                                            ; preds = %.noexc57.i
  invoke void @__cxa_throw(ptr nonnull %i.jr, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
          to label %bb.bs unwind label %bb.br

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %.noexc.i56.i
  %i.jx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %common.resume.sink.split.i

bb.br:                                            ; preds = %bb.bq, %.noexc57.i
  %.0.i.i.i = phi i1 [ false, %bb.bq ], [ true, %.noexc57.i ] ; 2 uses
  %i.jy = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.jz = load ptr, ptr %9, align 8, !tbaa !33    ; 2 uses
  %i.ka = icmp eq ptr %i.jz, %i.js
  br i1 %i.ka, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.br
  call void @_ZdlPv(ptr noundef %i.jz) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br i1 %.0.i.i.i, label %common.resume.sink.split.i, label %.body.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br i1 %.0.i.i.i, label %common.resume.sink.split.i, label %.body.thread

bb.bs:                                            ; preds = %bb.bq
  unreachable

.split87.us.i:                                    ; preds = %.noexc74
  %i.kb = call ptr @__cxa_allocate_exception(i64 16) #20 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.bt unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.bt:                                            ; preds = %.split87.us.i
  %i.kc = getelementptr inbounds nuw i8, ptr %i.fa, i64 9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i8 -56, ptr %i.c, align 1, !tbaa !276
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !256
  store i8 %i.kd, ptr %i.d, align 1, !tbaa !276
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.kb, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
          to label %bb.bu unwind label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  invoke void @__cxa_throw(ptr nonnull %i.kb, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
          to label %bb.bw unwind label %bb.bv

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %.split87.us.i
  %i.ke = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %common.resume.sink.split.i

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.0.i59.i = phi i1 [ false, %bb.bu ], [ true, %bb.bt ] ; 2 uses
  %i.kf = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %i.kg = load ptr, ptr %6, align 8, !tbaa !33    ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ki = icmp eq ptr %i.kg, %i.kh
  br i1 %i.ki, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.bv
  call void @_ZdlPv(ptr noundef %i.kg) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br i1 %.0.i59.i, label %common.resume.sink.split.i, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br i1 %.0.i59.i, label %common.resume.sink.split.i, label %.body

bb.bw:                                            ; preds = %bb.bu
  unreachable

.noexc.i61.i:                                     ; preds = %_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE.exit.us.i
  %i.kj = call ptr @__cxa_allocate_exception(i64 16) #20 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.kk = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.kk, ptr %8, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i64 55, ptr %i.b, align 8, !tbaa !78
  %i.kl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc62.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i47.i ; 3 uses

.noexc62.i:                                       ; preds = %.noexc.i61.i
  store ptr %i.kl, ptr %8, align 8, !tbaa !33
  %i.km = load i64, ptr %i.b, align 8, !tbaa !78  ; 3 uses
  store i64 %i.km, ptr %i.kk, align 8, !tbaa !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.kl, ptr noundef nonnull align 1 dereferenceable(55) @.str.21, i64 55, i1 false)
  %i.kn = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.km, ptr %i.kn, align 8, !tbaa !28
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kl, i64 %i.km
  store i8 0, ptr %i.ko, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.kj, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.bx unwind label %bb.by

bb.bx:                                            ; preds = %.noexc62.i
  invoke void @__cxa_throw(ptr nonnull %i.kj, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
          to label %bb.bz unwind label %bb.by

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i47.i: ; preds = %.noexc.i61.i
  %i.kp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %common.resume.sink.split.i

bb.by:                                            ; preds = %bb.bx, %.noexc62.i
  %.0.i.i.i50.i = phi i1 [ false, %bb.bx ], [ true, %.noexc62.i ] ; 2 uses
  %i.kq = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.kr = load ptr, ptr %8, align 8, !tbaa !33    ; 2 uses
  %i.ks = icmp eq ptr %i.kr, %i.kk
  br i1 %i.ks, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i52.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i51.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i51.i: ; preds = %bb.by
  call void @_ZdlPv(ptr noundef %i.kr) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br i1 %.0.i.i.i50.i, label %common.resume.sink.split.i, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i52.i: ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br i1 %.0.i.i.i50.i, label %common.resume.sink.split.i, label %.body

bb.bz:                                            ; preds = %bb.bx
  unreachable

.split90.us.i:                                    ; preds = %bb.ao
  %i.kt = call ptr @__cxa_allocate_exception(i64 16) #20 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.ca unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i65.i

bb.ca:                                            ; preds = %.split90.us.i
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.kt, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.cb unwind label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  invoke void @__cxa_throw(ptr nonnull %i.kt, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
          to label %bb.cd unwind label %bb.cc

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i65.i: ; preds = %.split90.us.i
  %i.ku = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %common.resume.sink.split.i

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.0.i67.i = phi i1 [ false, %bb.cb ], [ true, %bb.ca ] ; 2 uses
  %i.kv = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.kw = load ptr, ptr %4, align 8, !tbaa !33    ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ky = icmp eq ptr %i.kw, %i.kx
  br i1 %i.ky, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i69.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i68.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i68.i: ; preds = %bb.cc
  call void @_ZdlPv(ptr noundef %i.kw) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br i1 %.0.i67.i, label %common.resume.sink.split.i, label %.body.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i69.i: ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br i1 %.0.i67.i, label %common.resume.sink.split.i, label %.body.thread

bb.cd:                                            ; preds = %bb.cb
  unreachable

_ZN6duckdbL16ExtractAllStructERN10duckdb_re211StringPieceERNS0_3RE2ERmPS1_i.exit.i: ; preds = %.noexc80, %.noexc76, %._crit_edge.us.i, %.noexc69
  %.us-phi.i = phi i64 [ %.0.us.i, %.noexc69 ], [ %i.el, %._crit_edge.us.i ], [ %.0.i65, %.noexc76 ], [ %i.jb, %.noexc80 ] ; 2 uses
  %i.kz = load i64, ptr %i.do, align 8, !tbaa !139
  %i.la = sub i64 %.us-phi.i, %i.kz
  %i.lb = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store i64 %i.la, ptr %i.lb, align 8, !tbaa !141
  invoke void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %.us-phi.i)
          to label %_ZN6duckdbL27ExtractStructAllSingleTupleERKNS_8string_tERN10duckdb_re23RE2ERNS_6vectorINS3_11StringPieceELb1ESaIS7_EEERNS6_INS_10unique_ptrINS_6VectorESt14default_deleteISC_ELb1EEELb1ESaISF_EEERSC_m.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN6duckdbL27ExtractStructAllSingleTupleERKNS_8string_tERN10duckdb_re23RE2ERNS_6vectorINS3_11StringPieceELb1ESaIS7_EEERNS6_INS_10unique_ptrINS_6VectorESt14default_deleteISC_ELb1EEELb1ESaISF_EEERSC_m.exit: ; preds = %_ZN6duckdbL16ExtractAllStructERN10duckdb_re211StringPieceERNS0_3RE2ERmPS1_i.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.ce

bb.ce:                                            ; preds = %_ZN6duckdbL27ExtractStructAllSingleTupleERKNS_8string_tERN10duckdb_re23RE2ERNS_6vectorINS3_11StringPieceELb1ESaIS7_EEERNS6_INS_10unique_ptrINS_6VectorESt14default_deleteISC_ELb1EEELb1ESaISF_EEERSC_m.exit, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit
  %i.lc = add nuw i64 %.048150, 1                 ; 2 uses
  %exitcond165.not = icmp eq i64 %i.lc, %spec.select
  br i1 %exitcond165.not, label %._crit_edge152, label %bb.y, !llvm.loop !277

.loopexit:                                        ; preds = %_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv.exit.us.i, %bb.ap
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.loopexit.split-lp.loopexit:                      ; preds = %.noexc72, %bb.ah, %.noexc70, %bb.ag, %.split.us.i
  %lpad.loopexit133 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %.split.i, %bb.bl, %.noexc77, %bb.bm, %.noexc79
  %lpad.loopexit136 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, %bb.ae, %.noexc67, %_ZN6duckdbL16ExtractAllStructERN10duckdb_re211StringPieceERNS0_3RE2ERmPS1_i.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cf:                                            ; preds = %._crit_edge152
  br i1 %i.bw, label %bb.cg, label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
          to label %bb.ci unwind label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %._crit_edge152
  %i.ld = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ci:                                            ; preds = %bb.cg, %bb.cf
  %.not.i.i.i82 = icmp eq ptr %.sroa.0112.0, null
  br i1 %.not.i.i.i82, label %_ZNSt6vectorIN10duckdb_re211StringPieceESaIS1_EED2Ev.exit, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0112.0) #22
  br label %_ZNSt6vectorIN10duckdb_re211StringPieceESaIS1_EED2Ev.exit

_ZNSt6vectorIN10duckdb_re211StringPieceESaIS1_EED2Ev.exit: ; preds = %bb.ci, %bb.cj
  %i.le = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !180 ; 8 uses
  %.not.i.i.i.i.i83 = icmp eq ptr %i.lf, null
  br i1 %.not.i.i.i.i.i83, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.ck

bb.ck:                                            ; preds = %_ZNSt6vectorIN10duckdb_re211StringPieceESaIS1_EED2Ev.exit
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 8 ; 4 uses
  %i.lh = load atomic i64, ptr %i.lg acquire, align 8 ; 2 uses
  %i.li = icmp eq i64 %i.lh, 4294967297
  %i.lj = trunc i64 %i.lh to i32                  ; 2 uses
  br i1 %i.li, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  store i32 0, ptr %i.lg, align 8, !tbaa !181
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lf, i64 12
  store i32 0, ptr %i.lk, align 4, !tbaa !183
  %i.ll = load ptr, ptr %i.lf, align 8, !tbaa !7
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  %i.ln = load ptr, ptr %i.lm, align 8
  call void %i.ln(ptr noundef nonnull align 8 dereferenceable(16) %i.lf) #20, !inline_history !184
  %i.lo = load ptr, ptr %i.lf, align 8, !tbaa !7
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 24
  %i.lq = load ptr, ptr %i.lp, align 8
  call void %i.lq(ptr noundef nonnull align 8 dereferenceable(16) %i.lf) #20, !inline_history !184
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.cm:                                            ; preds = %bb.ck
  %i.lr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i.i.i.i84 = icmp eq i8 %i.lr, 0
  br i1 %.not.i.i.i.i.i.i84, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ls = add nsw i32 %i.lj, -1
  store i32 %i.ls, ptr %i.lg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i85

bb.co:                                            ; preds = %bb.cm
  %i.lt = atomicrmw volatile add ptr %i.lg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i85

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i85: ; preds = %bb.co, %bb.cn
  %.0.i.i.i.i.i.i.i86 = phi i32 [ %i.lj, %bb.cn ], [ %i.lt, %bb.co ]
  %i.lu = icmp eq i32 %.0.i.i.i.i.i.i.i86, 1
  br i1 %i.lu, label %bb.cp, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !185

bb.cp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i85
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lf) #20
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.cp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i85, %bb.cl, %_ZNSt6vectorIN10duckdb_re211StringPieceESaIS1_EED2Ev.exit
  %i.lv = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !180 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.lw, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.cq

bb.cq:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 8 ; 4 uses
  %i.ly = load atomic i64, ptr %i.lx acquire, align 8 ; 2 uses
  %i.lz = icmp eq i64 %i.ly, 4294967297
  %i.ma = trunc i64 %i.ly to i32                  ; 2 uses
  br i1 %i.lz, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  store i32 0, ptr %i.lx, align 8, !tbaa !181
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lw, i64 12
  store i32 0, ptr %i.mb, align 4, !tbaa !183
  %i.mc = load ptr, ptr %i.lw, align 8, !tbaa !7
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 16
  %i.me = load ptr, ptr %i.md, align 8
  call void %i.me(ptr noundef nonnull align 8 dereferenceable(16) %i.lw) #20, !inline_history !186
  %i.mf = load ptr, ptr %i.lw, align 8, !tbaa !7
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 24
  %i.mh = load ptr, ptr %i.mg, align 8
  call void %i.mh(ptr noundef nonnull align 8 dereferenceable(16) %i.lw) #20, !inline_history !186
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.cs:                                            ; preds = %bb.cq
  %i.mi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.mi, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.mj = add nsw i32 %i.ma, -1
  store i32 %i.mj, ptr %i.lx, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.cu:                                            ; preds = %bb.cs
  %i.mk = atomicrmw volatile add ptr %i.lx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.cu, %bb.ct
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.ma, %bb.ct ], [ %i.mk, %bb.cu ]
  %i.ml = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.ml, label %bb.cv, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !185

bb.cv:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lw) #20
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.cr, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  ret void

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i52.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i51.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %common.resume.sink.split.i, %bb.ad, %bb.ch
  %.pn.pn = phi { ptr, i32 } [ %i.ld, %bb.ch ], [ %i.dd, %bb.ad ], [ %common.resume.op.ph.i, %common.resume.sink.split.i ], [ %i.kq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i51.i ], [ %lpad.loopexit136, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %i.kf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.kf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.kq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i52.i ], [ %lpad.loopexit133, %.loopexit.split-lp.loopexit ] ; 2 uses
  %.not.i.i.i87 = icmp eq ptr %.sroa.0112.0, null
  br i1 %.not.i.i.i87, label %_ZNSt6vectorIN10duckdb_re211StringPieceESaIS1_EED2Ev.exit88, label %.body.thread

.body.thread:                                     ; preds = %bb.bg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i101, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i100, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i68.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i69.i, %.body
  %.pn.pn130 = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %i.kv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i69.i ], [ %i.kv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i68.i ], [ %lpad.loopexit, %.loopexit ], [ %i.id, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i101 ], [ %i.id, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i100 ], [ %i.go, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i.i ], [ %.pn9.i.i, %bb.bg ], [ %i.jy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.jo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.jy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.jo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0112.0) #22
  br label %_ZNSt6vectorIN10duckdb_re211StringPieceESaIS1_EED2Ev.exit88

_ZNSt6vectorIN10duckdb_re211StringPieceESaIS1_EED2Ev.exit88: ; preds = %bb.x, %.body, %.body.thread, %bb.t, %bb.v, %bb.w, %bb.u, %bb.s
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bx, %bb.s ], [ %i.by, %bb.t ], [ %i.bz, %bb.u ], [ %i.ca, %bb.v ], [ %i.cb, %bb.w ], [ %i.cc, %bb.x ], [ %.pn.pn, %.body ], [ %.pn.pn130, %.body.thread ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb12StructVector10GetEntriesERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !255    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !185

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
end_hunk_2
